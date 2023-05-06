! Exercício 2 
implicit none
real :: x,y,I,N
open(1, file = "lista.dat")
I = 0
N = 0
do
read(1,*, End = 100) x
I = I + x; N = N + 1; y = I/N
end do
100 continue
print*, "Números lidos ",N, "Média ", y
close(1)
end