program newtfrac
  implicit none
  complex :: z, RAIZ(5)
  real :: x, y, a, b, dN
  real, parameter :: e = 1E-06
  integer :: I, J, K, L, N, NR, Nmax
  logical :: flag
  character(11) filename
  ! Intervalo de teste: [a,b]
  ! Número de teste para cada parte (real e complexa):  N
  ! Passo: dN
  ! Número máximo de interações: Nmax
  ! Array com as raízes: RAIZ

  a=-1; b=1; N=1000; dN = (b-a)/N; Nmax=100; RAIZ=0
  x=a;y=a

  ! Varredura a procura de raízes no intervalo
  do I=0, N     ! Varre parte real, ou seja, x
     x = a + I*dN
     do J=0, N     ! Varre parte imaginária, ou seja, y
        y = a + J*dN
        z = cmplx(x,y)     ! Composição do número complexo
        do L=1, Nmax
           if (g(z) == 0) then     ! Derivada igual a zero
              exit

           else
              z = z - (f(z)/g(z))     ! Método de Newton-Raphson
              if (abs(f(z)) < e) then     ! Zero da função
                 print*, "I",I,"J",J, "raiz", z
                 if (I==0 .and. J==0) then     ! Primeira raiz
                    RAIZ(1)=z; NR = 1; write(filename,'(A5,I2.2,A4)') "cmplx",NR,".dat"; open(NR,file=filename)
                 end if

                 ! Teste se raízes são diferentes e salva em arquivos diferentes os pontos que vão parar para cada raíz 
                 do K=1, NR
                    if (abs(z - RAIZ(K)) < e) then     ! Raízes são iguais
                       flag = .false.; write(filename,'(A5,I2.2,A4)') "cmplx",K,".dat"; write(K,*)x,y
                       exit
                    else     ! Raízes são diferentes
                       flag = .true.
                    end if
                 end do
                 if(flag) then     ! Armazena as raízes diferentes
                    NR=NR+1; RAIZ(NR)=z; write(filename,'(A5,I2.2,A4)') "cmplx",NR,".dat"; open(NR,file=filename); write(NR,*)x,y
                 end if
                 exit
              end if
           end if
        end do
     end do
  end do
  print*, RAIZ

!Funções  
contains
  complex function f(z)     ! Polinômio
    complex z
    f = z**5 - 1
  end function f

  complex function g(z)     ! Derivada do polinômio
    complex z
    g = 5*z**4
  end function g
end program newtfrac
