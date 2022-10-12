! https://projecteuler.net/problem=2
program problem2

    implicit none

    integer :: f1, f2, temp, sum, i
    f1 = 1
    f2 = 1
    sum = 0

    do i = 1,10000
        temp = f2
        f2 = f2 + f1
        f1 = temp
        if (f2 > 4000000) then
            exit
        end if
        if (mod(f2, 2) == 0) then
            sum = sum + f2
        end if
    end do

    print *, sum

end program problem2
