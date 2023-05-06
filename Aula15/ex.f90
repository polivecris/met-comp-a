! Exercício usando coisa normal
implicit none
real :: x, s, m
integer :: I
open(1, file = "ex.dat")
do I = 1, 10
  read(1,*,End=100)x
  s = s + x
  end do
100 continue
print*, s, s/10
end