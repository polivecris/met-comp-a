implicit none
real, external :: f
real :: x, dx, df, e
integer :: I, N

print*, "Digite x"
read*, x
dx = 0.0001
e = 0.0000000001

do while (abs(f(x)) < e)
df = (f(x+dx)-f(x-dx))/(2*dx)
x = x - (f(x)/df)
print*, x
end do  
end
