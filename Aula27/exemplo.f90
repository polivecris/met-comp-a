implicit none
integer:: seed, N, I

read*, seed, n
call srand(seed)

do i=1, n
print*, i, (rand()-0.5)*0.1
end do
end 
