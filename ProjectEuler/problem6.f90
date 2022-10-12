program problem6

        implicit none

        integer :: i,j,k

        j = 0
        k = 0

        do i=1,100
            j = j + (i**2)
            k = k + i
        end do

        k = k ** 2

        print *, k
        print *, j

        print *, (k-j)

end program problem6
