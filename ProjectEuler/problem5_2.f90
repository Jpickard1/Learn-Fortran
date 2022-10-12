! Find the smallest multiple of 1,...,20
! https://projecteuler.net/problem=5
program problem5

    use iso_fortran_env
    implicit none

    ! 2520 is the smallest value divisible by all 11-10
    integer :: step, i, itr
    integer(int64) :: count
    logical :: found, divisible
    found = .false.

    count = 0

    step = 2520
    itr = 0
    do while (found .eqv. .false.)
        if (mod(itr, 1000) == 0) then
            print *, count
        end if
        itr = itr + 1
        count = count + step
        divisible = .true.
        do i=11,20
            if (mod(count, i) /= 0) then
                divisible = .false.
                exit
            end if
        end do
        if (divisible .eqv. .true.) then
            found = .true.
            print *, count
        end if
    end do


end program problem5
