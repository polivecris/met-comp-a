  implicit none
  complex, external :: f
  complex :: x, df, a, b
  real :: dn, e
  integer :: I, J, N

  print*, "Digite [a, b] e N"
  read*, a, b, N
  dn = (b-a)/N
  e = 0.00000001
  x=a
  do I=0, N
     x = x + I*dn
     do J=1, 10000
        x = x - (f(x)/(2*x))
        if (abs(f(x)) < e) then 
           exit
        end if
     end do
print*, I,x, f(x)
  end do
end program
