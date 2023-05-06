! Exercício 8
implicit none
integer :: N, F1, F2, F
F = 0
F1 = 1
read*, N
do while (F < N)
print*, F
F = F1 + F2
F1 = F2
F2 = F  
end do
end