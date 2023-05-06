!Exercício 2 com função
program conversortc
  implicit none
  real, external :: tf
  real :: tc 
  do
  read(*,*,Err = 100) tc
  exit
  100 print*, "Digite um número"
  end do
  print*, "Temperatura Celsius:", tc
  print*, "Temperatura Fahrenheit:", tf(tc)
end program conversortc