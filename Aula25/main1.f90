  implicit none
  complex, external :: f
  complex :: x 
  real:: e
  integer :: I, N

  print*, "Digite x"
  read*, x
  e = 0.0000000001

  do I=1, 10000
     x = x - (f(x)/(2*x))
     if (abs(f(x)) < e) then
        exit
     end if
     print*, I,x
  end do
end 
