! Largest palendrome produced as product of 2 3 digit numbers
program problem4

    implicit none

    integer :: i, j, maxPalendrome, prod
    logical :: ispd = .false.

    !do i = 993,994
    !    do j = 448,449
    do i = 100,999
        do j = 100,999
            prod = i * j
            ispd = ispalandrome(prod)
            if ((ispd .eqv. .true.) .and. (prod > maxPalendrome)) then
                print *, i
                print *, j
                maxPalendrome = prod
                print *, prod
            end if
        end do
    end do

    print *, maxPalendrome

contains

logical function ispalandrome(prod) result(ispd)
    
    implicit none
    !integer, intent(in) :: prod, upper, checks, t1, t2, u, bbb
    integer :: prod, checks, t1, t2, u, bbb, i
    !logical, intent(out) :: ispd
    !logical :: ispd
    real :: logVal, prod2, upper, t22, ten
    ten = 10
    !real, intent(in) :: logVal
    ispd = .true.

    prod2 = prod

    logVal = log10(prod2)
    upper = floor(logVal)
    checks = floor((upper + 1)/ 2)

    !print *, prod2
    !print *, checks
    !print *, upper
    
    ! Loop over the number oe elements that musht match
    do i = 1,checks
        ! u is the upper digit we are comparing
        t1 = 10 ** (upper - i + 1)
        u = floor(prod2/t1)      ! Upper digit to check
        u = mod(u, 10)
        !print *, u

        ! bbb is the lower digit we are comparing
        t2 = (prod / (10 ** (i-1)))
        t22 = t2
        t22 = floor(t22)
        !print *, t22
        bbb = mod(t22, ten)


        !print *, u
        !print *, bbb

        if (u /= bbb) then
            ispd = .false.
        end if

        !print *, t1
        !print *, t2

        !print *, u
        !print *, bbb
    end do

    !print *, ispd

end function

end program problem4