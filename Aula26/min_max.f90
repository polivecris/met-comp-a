  implicit none
  real, external :: f
  real, parameter :: Nmax
  real :: x, y, a, b, d

  print*, "Digite o intervalo [a,b] e Nmax"
  read*, a,b,Nmax

  do
     x=(a+b)/2
     d=(b-a)/2
     if (f(a) > f(x) .and. f(x) < f(b)) then
        d=d/2
        a=x-d
        b=x+d
     end if
	if ((b-a)/d > Nmax) exit
  end do
  print*, "O mínimo da função no intervalo é", x

  do 
     y=(a+b)/2
     d=(b-a)/2
     if (f(a) < f(y) .and. f(y) > f(b)) then
        d=d/2
        a=y-d
        b=y+d
     end if
	if ((b-a)/d > Nmax) exit		
  end do
  print*, "O máximo da função no intervalo é", y
end
