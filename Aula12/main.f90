! Exercício funções
program funcao
  implicit none
  real, external :: f
  real x, dx
  integer I
  dx = 0.1
  open(1, file = "dados.dat")
  do I = 0, 100
    x = I*dx
    print*, x, f(x)
    write(1,*) x, f(x) 
  end do
  close(1)
end program funcao