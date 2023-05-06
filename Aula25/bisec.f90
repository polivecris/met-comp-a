  implicit none
  real, external :: f
  real, parameter :: e=1E-8
  real :: a, b, c

  print*,"Digite o intervalo [a,b]"
  read*, a,b
  print*, a,b

do 
     c = (a+b)/2
     if (f(a)*f(c) < 0) then
        a=a
        b=c
     else if (f(c)*f(b) < 0) then
        a=c
        b=b
     end if
	if ((f(c) < e) .or. (abs(a-c) < e)) exit
end do
  print*, "A raiz é", c
end program
