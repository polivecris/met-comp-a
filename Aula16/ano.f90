!Exercício que lê número e retorna a data
implicit none
character*5 M(12)
integer A, n
data M /" Jan "," Fev "," Mar "," Abr "," Mai "," Jun "," Jul "," Ago "," Set "," Out "," Nov "," Dez "/

read*, n
A = n/365
print*, "O ano é:", A
end
