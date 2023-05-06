! Função principal
implicit none
real, external :: df
real :: x
read*, x
print*, x, f(x), df(x)

contains
 real function f(x)
f = x**2
end function 

end
