! This program computes fibonacci variables saving them as integers
program fibonacci
    implicit none

    integer :: i1 = 1
    integer :: i2 = 1
    integer :: n = 10
    
    integer :: temp, i

    do i = 0,n
        print *, i2
        temp = i2
        i2 = i2 + i1
        i1 = temp
    end do

end program fibonacci