!Exercício que lê número e retorna a data
implicit none
character*5 M(12)
integer A,n,i,dias,soma,c,D(12)
data M /" Jan "," Fev "," Mar "," Abr "," Mai "," Jun "," Jul "," Ago "," Set "," Out "," Nov "," Dez "/
data D /31,29,31,30,31,30,31,31,30,31,30,31/
read*, n
A = n/365
dias = mod(n,365)
print*, "O ano é:", A, dias

c=0
soma=0
do while (dias <= soma)
c = c + 1
soma = soma + D(c)
end do
print*, D(c)
end
