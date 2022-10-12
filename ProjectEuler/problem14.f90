! https://projecteuler.net/problem=14
! Which number under 1 million produces the longest collatz sequence
program problem14

    use iso_fortran_env
    implicit none

    integer, dimension(1000000) :: N
    integer :: maxlength, maxnumber, steps, i
    integer(int64) :: num
    logical :: converged

    N(:) = -1
    N(1) = 1
    maxlength = 1
    maxnumber = 1

    do i=1,1000000
        ! Compute collatz sequence starting at i
        num = i
        steps = 1
        converged = .false.
        do while (converged .eqv. .false.)
            ! Set next sequence element
            if (mod(num, 2) == 0) then
                num = num / 2
            else
                num = 3 * num + 1
            end if                    
            steps = steps + 1
            ! Set converged
            if (num <= 1000000) then
                if (N(num) /= -1) then
                    converged = .true.
                end if
            end if
        end do
        steps = steps + N(num)
        N(i) = steps
        if (steps > maxlength) then
            maxlength = steps
            maxnumber = i
        end if
    end do

    print *, maxnumber
    print *, maxlength

end program problem14

