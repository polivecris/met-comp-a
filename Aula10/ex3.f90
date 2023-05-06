! Exercício 3
implicit none
real :: CI, DP, TJ, VF
integer :: I, TF
read*, CI, DP, TJ, TF
do I = 1, TF
VF = CI*(1+TJ/100.0) + DP
CI = VF
end do
print*, VF
end


