! Tarefa 1
program tarefa1
  implicit none 
  real, external :: f
  real :: dt, y, x(1:40001), ff(1:40001), df(1:40001), ddf(1:40001)
  integer :: I, J, K, L, M
  open(1, file = "f.dat")
  open(2, file = "df.dat")
  open(3, file = "d2f.dat")

  dt=0.0001
  do I=0, 40000
     x(I+1) = -2 + I*dt
  end do

  do K=0, 40000
     ff(K+1) = f(x(K+1))
  end do

  do J=0, 40000
     if (J==0) then
        y = (ff(J+2)-ff(J+1))/dt
        df(J+1) = y
     else if (J==40000) then
        y = (ff(J+1)-ff(J))/dt
        df(J+1) = y
     else 
        y =  (ff(J+2)-ff(J))/(2*dt)
        df(J+1) = y
     end if
  end do

  do M=1, 40001
     write(1,*) x(M), ff(M), df(M), ddf(M)
     write(2,*) x(M), df(M)
  end do

  close(1)
end program tarefa1
