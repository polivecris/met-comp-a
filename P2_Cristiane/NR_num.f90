program newtraph
  implicit none
  real(8) :: x, a, b, dN, g
  real, allocatable :: RAIZ(:)
  real(8), parameter :: e1 = 1E-08, dx=1E-06, e2=0.01
  integer :: I,J, K, N, NR, w
  integer, parameter :: Nmax = 1000
  logical :: flag
  
  print*, "Digite intervalo [a,b], número de chutes e número de raízes"
  read*,a,b,N,w
  allocate(RAIZ(w))
  RAIZ=0
  NR=0
  dN=(b-a)/N

  x=a
  do I=0, N
     x=a+I*dN
     do J=1, Nmax
        g=(f(x+dx)-f(x-dx))/(2*dx)
        if (g == 0) then     ! Derivada igual a zero
           exit

        else
           x = x - (f(x)/g)     ! Método de Newton-Raphson
           if (abs(f(x)) < e1) then     ! Zero da função
              print*, "I",I,"J",J,"raiz", x
              if ((NR==0) .and. (x > a)) then     ! Primeira raiz
                 RAIZ(1)=x; NR = 1
              end if

              ! Teste se raízes são diferentes 
              do K=1, NR
                 if (abs(x - RAIZ(K)) .lt. e2) then     ! Raízes são iguais
                    flag = .false.; exit
                 else     ! Raízes são diferentes
                    flag = .true.
                 end if
              end do
              if(flag) then     ! Armazena as raízes diferentes
                 NR=NR+1; RAIZ(NR)=x
              end if
              exit
           end if
        end if
     end do
  end do

  print*,"Raízes", RAIZ
  !Funções  
contains
  real(8) function f(x)     ! Polinômio
    real(8) x
    f = tan(x) - x
  end function f

end program newtraph
