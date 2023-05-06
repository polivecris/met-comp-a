!Exercício array
real :: x(10)
open(1, file = "ex.dat")
do I=1, N
  read(1,*,End= 100) x(I)
end do
100 print*, sum(x), (sum(x)/10)
end
