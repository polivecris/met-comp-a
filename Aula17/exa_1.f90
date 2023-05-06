!exercício com array
implicit none
real :: a, b, c, d(5)
integer :: I

open(1, file = "a.dat")
open(2, file = "b.dat")
open(3, file = "c.dat")

do I = 1, 5
read(1,*)a
read(2,*)b
read(3,*)c
  d(I) = (a+b+c)/3
end do

print*, d

end