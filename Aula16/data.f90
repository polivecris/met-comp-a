!Exercício que lê número e retorna a data
implicit none
character*5 M(12)
integer A, n, dia, dias, soma, c, D(12)
data M /" Jan ", " Fev ", " Mar ", " Abr ", " Mai ", " Jun ", " Jul ", " Ago "," Set "," Out "," Nov "," Dez "/
data D /31,28,31,30,31,30,31,31,30,31,30,31/
read*, n

A = n/365
dias = mod(n,365)
!print*, "O ano é:", A

c=0
soma=0
do
c = c + 1
soma = soma + D(c)
if (soma > dias) exit
end do
!print*, "O mês é:", M(c)

dia = dias-soma+D(c)
!print*, "O dia é:", dia

print*, "A data é", dia,"de",M(c),"de",A,"."
end
