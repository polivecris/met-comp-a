!Exercício 1
implicit none
integer :: I, N 
real :: x, y, xy, y2
open(1, file = "dados.dat", status = 'old')
open(2, file = "dados-new.dat", status = 'new')
do I = 1, N
read(1,*, Err = 100) x,y
xy=x*y;y2=y*y
write(2,*) x, y, xy, y2
print*, x, y, xy, y2
end do
100 stop "Algum problema"
close(1); close(2)
end