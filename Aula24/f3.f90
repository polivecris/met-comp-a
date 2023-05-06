real function f(x)
implicit none
real :: x, a
print*, "Digite a"
read*, a
f = (abs(x))**a
end function f
