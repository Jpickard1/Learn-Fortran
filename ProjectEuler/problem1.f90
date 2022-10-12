! https://projecteuler.net/problem=1
program problem1

    implicit none

    integer :: sum, i
    sum = 0

    do i = 1,999
        if ((mod(i, 3) == 0) .or. (mod(i, 5) == 0)) then
            ! print *, i
            sum = sum + i
        end if
    end do

    print *, sum

end program problem1
