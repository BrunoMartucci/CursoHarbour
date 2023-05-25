#include "hbgtinfo.ch"
	 
	REQUEST HB_GT_WVT_DEFAULT
	 
	Function main
	 
	   Local aArqs      := Directory( HB_DIRBASE() + '*.html' )
	 
	   HB_GtInfo(HB_GTI_RESIZEMODE, HB_GTI_RESIZEMODE_FONT ) /* aumenta o tamanho da letra proporcionalmente */
	   HB_GtInfo(HB_GTI_FONTNAME, "Lucida Console" )
	   HB_Gtinfo(HB_GTI_MAXIMIZED, .T.)
	    
	   Use Produtos alias pro
	   Index on codpro_ to codpro
	    
	   Use notafc alias nfc new
	   index on numero to numero
	 
	   Use inotafc alias infc new
	    
	   ALTD()   
	    
	   For nCont = 1 to Len( aArqs )   
	    
	      cNfc    := memoread( HB_DIRBASE() + aArqs[nCont,1] )
	      *cNfc    := memoread( 'consultanfce.htm')
	       
	      ? HB_DIRBASE() + aArqs[nCont,1]
	       
	      // Pega Numero da nota e consulta na tabela
	       
	      // D:/Mix/51200323215849000188650010002505291019250521.html   
	      //                                    36,6
	      cNumero := SubStr( HB_DIRBASE() + aArqs[nCont,1], 36, 6 )
	      DbSelectArea('nfc')
	      DbSetOrder(1)
	      If DbSeek(cNumero)
	         DbRLock()
	         _Field->Nfc->cstat := '   '   
	         DbCommit()
	         DbRUnlock()
	      Else         
	         Loop
	      EndIf
	       
	      // Pega qtde de itens do xml
	      // <span class="totalNumb">49</span>      
	          
	      nPosInicial   := HB_At( 'totalNumb">' , cNfc )
	      nPosfinal   := HB_At( '</', cNfc, nPosinicial )
	      nItens      := Val( SubStr( cNfc, nPosInicial+11, nPosFinal - nPosInicial+11 ) )
	       
	      // Pegar somente o texto a partir do primeito item
	      cNfc :=       SubStr( cNfc, HB_At('<tr id="Item + 1">', cNfc )) 
	       
	      For x = 1 to nItens
	       
	          
	         /* Bloco do item da nfce
	         <tr id="Item + 4">
	         <td valign="top">
	         <span class="txtTit">ESCOVA JJ REACH ESSENCIAL JR MC</span>
	         <span class="RCod">(Código:04173</span>
	 
	         <span class="Rqtd"><strong>Qtde.:</strong>1</span>
	         <span class="RUN"><strong>UN: </strong>UN</span>
	         <span class="RvlUnit"><strong>Vl. Unit.:</strong>&nbsp;4,75</span>
	         <span class="valor">4,75</span></td>
	         </tr>
	         */
	                                                 
	         cTxtGrupo:= '<tr id="Item + '+Alltrim( Str( X ) )
	         nPosInicial := HB_At( cTxtGrupo, cNfc ) 
	         // Pego todo o texto restante a partir dessa posição
	         // Pego do texto/arquivo todo
	         // existe forma mais inteligente de fazer mas assim é mais fácil e também funciona
	         cGrupo       := SubStr( cNfc, nPosInicial)
	          
	         // Pego a posição do final do bloco item  // '</tr>'
	         nPosfinal    := HB_At( '</tr>',cGrupo )
	         // Agora pego somente o bloco do item 
	         cGrupo       := SubStr( cGrupo, 0, nPOsfinal )
	          
	         // Pega os itens desta linha/grupo
	          
	         **************************************************************************
	         // Pega cNompro_
	         // <span class="txtTit">FARINHA TRIGO ANACONDA 01KG</span>
	         nPosIni    := Hb_at( '"txtTit">' , cGrupo )
	         nFinal   := Hb_at( '</span>' , cGrupo )
	         cNompro   := SubStr( cGrupo, nPosIni + 9, nFinal - nPosIni - 9)
	          
	         cGrupo    := SubStr( cGrupo, nFinal+7 )
	    
	         **************************************************************************
	         // Pega Código           // vai precisar de uma gambiarra louca aqui
	         /* <span class="RCod">
	                                 (Código:
	                                 55717
	                                 )
	                              </span>
	          
	*/
	          
	            // vamos extrair primeiro o codigo
	         nPosIni    := Hb_at( 'digo:' , cGrupo )
	         nFinal   := Hb_at( ')' , cGrupo )
	         cCodpro   := Left( Alltrim( SubStr( cGrupo, nPosIni+5, nFinal - nPosIni - 5 )),5 )  // codigo e sempre 5
	          
	         cGrupo    := SubStr( cGrupo, Hb_at( '/span', cGrupo ))
	          
	         **************************************************************************
	         // Pega Qtde
	         // <span class="Rqtd"><strong>Qtde.:</strong>2</span>
	         nPosIni    := Hb_at( '</strong>' , cGrupo )
	         nFinal   := Hb_at( '</span>' , cGrupo )
	         nQtde      := Val(SubStr( cGrupo, nPosIni+9,nFinal-nPosIni-9 ))
	          
	         cGrupo    := SubStr( cGrupo, nFinal+7 )
	    
	    
	         **************************************************************************
	         // Pega UN
	         // <span class="RUN"><strong>UN: </strong>UN</span>
	         nPosIni    := Hb_at( '</strong>' , cGrupo )
	         nFinal   := Hb_at( '</span>' , cGrupo )
	         cUnd      := SubStr( cGrupo, nPosIni+9,nFinal-nPosIni-9 )
	          
	         cGrupo    := SubStr( cGrupo, nFinal+7 )
	          
	    
	         **************************************************************************
	         // Pega Valor Unitario
	         /* <span class="RvlUnit"><strong>Vl. Unit.:</strong>
	                                 &nbsp;
	                                 3,99</span> */
	         nPosIni    := Hb_at( '&nbsp;' , cGrupo )
	         nFinal   := Hb_at( '</span>' , cGrupo )
	         nValor   := SubStr( cGrupo, nPosIni+6, nFinal - nPosIni - 6 )
	         nValor    := Alltrim( nValor )
	         nVlUnit  := Val( StrTran( nValor,',','.'))
	          
	         cGrupo    := SubStr( cGrupo, nFinal+7 )
	          
	         **************************************************************************
	         // Pega Valor Total
	         // <span class="valor">7,98</span></td>
	    
	         nPosIni    := Hb_at( '"valor">' , cGrupo )
	         nFinal   := Hb_at( '</span>' , cGrupo )
	         nTotal   := SubStr( cGrupo, nPosIni+8,nFinal - nPosIni - 8 )
	         nTotal     := Val( StrTran( nTotal,',','.'))
	          
	         cGrupo    := SubStr( cGrupo, nFinal+7 )
	          
	         DbSelectArea('pro')
	         DbSetOrder(1)
	         // Vou assumir que todos os produtos foram encontrados
	         DbSeek( cCodpro )
	          
	         DbSelectArea( 'infc' )
	         DbAppend()
	          
	         _Field->Infc->Numero    := cNumero
	         _Field->Infc->Dataemis    := Nfc->Dataemis
	         _Field->Infc->Codigo    := Nfc->Codigo
	          
	         _Field->Infc->Codpro    := cCodpro
	         _Field->Infc->Nome       := cNompro
	         _Field->Infc->Csosn       := Pro->Csosn_
	         _Field->Infc->Cfop       := Pro->Cfop_
	         _Field->Infc->Und       := cUnd
	         _Field->Infc->Qtde       := nQtde
	         _Field->Infc->VlOrig    := nVlUnit
	         _Field->Infc->Vu          := nVlUnit
	         _Field->Infc->Vt          := nTotal
	         _Field->Infc->Bicms       := If( Pro->Cfop_='5102',nTotal,0.00)
             _Field->Infc->Ai          := If( Pro->Cfop_='5102',17,0)
	         _Field->Infc->VlIcms    := If( Pro->Cfop_='5102',Round(nTotal*17/100,2),0.00)
        Next
	   Next
	   Return nil
	 