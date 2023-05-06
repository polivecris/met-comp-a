! Exercício 4 com função
program conversor
  implicit none
  real, external :: f, g
  real :: x, y
  integer :: num
do
print*, "Qual o tipo de conversão? 1 Celsius para Fahrenheit ou 2 Fahrenheit para Celsius?"
do
read(*,*, ERR=99) num
exit
99 print*, "Opção Inválida. Selecione 1 ou 2"
end do
select case (num)
  case (1)
    do
    read(*,*,Err=100) x
    exit
    100 print*,"Digite um número"
  end do
  print*, "Temperatura Celsius", x
  print*, "Temperatura Fahrenheit", f(x); Exit
case (2)
  do
  read(*,*, Err=101) y
  exit
  101 print*, "Digite um número"
end do
print*, "Temperatura Fahrenheit", y
print*, "Temperatura Celsius", g(y); Exit
end select
end do
end program conversor