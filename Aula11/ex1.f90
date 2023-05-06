! Exercício 1
implicit none
real :: nota
character*20 nome
character*1 conc
character*50 arq
print*, "Insira nome do arquivo"
read*, arq
open(1, file = arq)
do 
  read(1,*,End = 100) nome, nota
  if (nota >= 8.5) then
    conc = "A"
  else if (nota >= 7.5) then
    conc = "B"
  else if (nota >= 6.0) then
    conc = "C"
  else
    conc = "D"
  end if
  print*, nome, nota, conc
end do
print*, nome, nota, conc
100 stop
close(1)
end