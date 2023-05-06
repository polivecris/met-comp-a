! Exercício 4
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
  read(*,*,Err=100) tc
  exit
  100 print*,"Digite um número"
end do
  tf = tc*1.8+32
  print*, "Temperatura Celsius", tc
  print*, "Temperatura Fahrenheit", tf; Exit
case (2)
  do
  read(*,*, Err=101) tf
  exit
  101 print*, "Digite um número"
  end do
  tc = (tf - 32)/1.8
  print*, "Temperatura Fahrenheit", tf
  print*, "Temperatura Celsius", tc; Exit
end select
end do
end