/*
    Entrada: As notas dos alunos
    Saida: A impressao de cada nota com
           a media da turma 
	 Verifica se a nota e igual a sete
*/

#define tAlunos 5

procedure main 
local nNota1, nNota2, nNota3, nNota4, nNota5
local nMedia, cMsg

	input "Nota aluno 1: " to nNota1
	input "Nota aluno 2: " to nNota2
	input "Nota aluno 3: " to nNota3
	input "Nota aluno 4: " to nNota4
	input "Nota aluno 5: " to nNota5
	?


	nMedia := (nNota1 + nNota2 + nNota3 + nNota4 + nNota5) / tAlunos

	if (nMedia == 7)
		cMsg := "Aprovado"
	else
		cMsg := "Nota e maior ou menor que 7"
	end if


	? "Nota do aluno1: " , nNota1 , cMsg
	? "Nota do aluno2: " , nNota2 , cMsg
	? "Nota do aluno3: " , nNota3 , cMsg
	? "Nota do aluno4: " , nNota4 , cMsg
	? "Nota do aluno5: " , nNota5 , cMsg
	?
	? "A media da Turma e: " , nMedia

return
