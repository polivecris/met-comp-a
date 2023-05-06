program lagrange_neville
  implicit none
  real, allocatable :: x(:), A(:,:)
  real :: xi, yi, xa, xb, xp, dx, q1, q2
  integer :: N, I, J, K, L, Mi, Mf, NP
  character(7) filename

  print*, "Qual arquivo abrir?"
  read*, filename

!! Lê quantos pontos tem no arquivo para interpolar !!
  N=0
  open(1,file=filename)
  do
     read(1,*,end=100)xi
     N=N+1
  end do
 100 close (1)

!! Aloca as matrizes de x e do polinômio P=y !! 
  allocate(x(N)); x=0; allocate(A(N,N)); A=0

!! Lê o arquivo e escreve em cada matriz !! 
  open(2,file=filename)
  do L=1, N
     read(2,*,end=101)xi,yi
     x(L)=xi
     A(L,1)=yi
  end do
101 close(2)
  
  print*, "Número de pontos entre cada par de pontos?"
  read*, NP

!! Define o intervalo para interpolar !!
  xa=x(1); xb=x(N)

!! Define o passo de interpolação do polinômio !!
  q1=N;q2=(N*NP)+N
  dx=q1/q2; Mf=(xb-xa)/dx

!! Arquivo onde será salvo os valores interpolados. 
!! Atenção: Escreve nome do arquivo de acordo com o número de pontos entre cada par de pontos. Se houver mais de um arquivo que se queira o mesmo número de pontos entre cada par de pontos, o arquivo pNP.dat antigo será substituído pelo mais recente !!
  write(filename,'(A1,I2.2,A4)')"p",NP,".dat"
  open(3,file=filename)

!! Aqui se calcula o polinômio de Lagrange pelo algoritmo de Neville !!
  do Mi=0, Mf
     xp=xa+Mi*dx
     do J=2, N
        do I=1, (N-J+1)
           k=(I+J-1)
           A(I,J)=(((xp-x(k))*A(I,J-1))-((xp-x(I))*A(I+1,J-1)))/(x(I)-x(K))
        end do
     end do
     print*,xp,A(1,N)
     write(3,*) xp, A(1,N)
  end do
close(3)
end program lagrange_neville
