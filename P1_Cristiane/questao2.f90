implicit none
real :: x, y, z
open(1, file = "fx.dat")
open(2, file = "fx2.dat")
do
read(1,*, End = 100)x,y
if (y <= 0.25) then
  z = 0.25
else if (y <= 0.5) then
  z = 0.5
else if (y <= 0.75) then
  z = 0.75
else if (y <= 1.0) then
  z = 1.0
else if (y <= 1.25) then
  z = 1.25
else if (y <= 1.5) then
  z = 1.5
else
  z = 1.5
end if
write (2,*) x,z
end do
100 continue
close(1); close(2)
end