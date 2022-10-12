! Largest palendrome produced as product of 2 3 digit numbers
program problem4

    implicit none

    integer :: i, j, maxPalendrome, prod, length
    logical :: ispd = .false.

    do i = 12,13 !100,999
        do j = 12,13 !100,999
            prod = i * j
            ! ispd = ispalandrome(prod)
            ispd = .true.
            character, allocatable :: name(:)

            length = floor(log10(prod))
            allocate(name(length))

            half = floor(length / 2)

            print *, prod
            print *, half
            
            if (ispd == .true.) then
                maxPalendrome = prod
            end if
        end do
    end do

    print *, maxPalendrome

end program problem4
