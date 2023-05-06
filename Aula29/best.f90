program melhor_conjunto
implicit none 
real :: a1, xmed1, x2med1, sig21, err_a1, a2, xmed2, x2med2, sig22, err_a2, x1, x2
integer :: N1, N2
character :: nomearq1, nomearq2

print*, "Digite nome do arquivo 1"
read*, nomearq1
open(1, file = nomearq1)

print*, "Digite nome do arquivo 2"
read*, nomearq2
open(2, file = nomearq2)

N1=0; xmed1=0; x2med1=0
do 
read(1,end=100) x1
N1=N1+1
xmed1=xmed1+x1
x2med1=x2med+x1**2
end do
100 xmed1=xmed1/N1; x2med1=x2med1/N1; sig21=x2med1-(xmed1**2); err_a1=sqrt(x2med1/(N1*sig21))
print* "No arquivo 1, sigma^2="sig21,"e erro de a=", err_a1

N2=0; xmed2=0; x2med2=0
do 
read(1,end=100) x2
N2=N2+1
xmed2=xmed2+x2
x2med2=x2med+x2**2
end do
100 xmed2=xmed2/N2; x2med2=x2med2/N2; sig22=x2med2-(xmed2**2); err_a2=sqrt(x2med2/(N2*sig22))
print* "No arquivo 1, sigma^2="sig22,"e erro de a=", err_a2

if (err_a1 < err_a2) then
   print*, "Conjunto do arquivo 1 é melhor"
else if (err_a1 > err_a2) then
   print*, "Conjunto do arquivo 2 é melhor"
else 
   print*, "Ambos conjuntos estão bons"
end if

end program melhor_conjunto
