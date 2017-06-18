program poisson
implicit none

integer :: i, k, n, maxit
double precision, allocatable, dimension(:) :: u, unew, f
double precision :: x, h, xmin, xmax, eps, diff

write(0,*)'n = '
read(*,*)n

allocate(u(0:n+1))
allocate(unew(0:n+1))
allocate(f(0:n+1))

xmin = 0.d0
xmax = 1.d0
h = (xmax - xmin) / (n+1)

do i = 0, n+1
  x = i * h + xmin
  f(i) =  x * ( x + 3) * exp(x)
end do

maxit = 1000000
eps = 1.d-5

u(1:n) = 0.d0
u(0) = 0.d0
u(n+1) = 0.d0

k = 0
do
  unew(1:n) = 0.5d0*(f(1:n)*h ** 2 + u(2:n+1) + u(0:n-1))

  diff = sqrt(dot_product(unew(1:n)-u(1:n),unew(1:n)-u(1:n)))
  u(1:n) = unew(1:n)

  if ( diff .le. eps .or. k .eq. maxit ) exit
  k = k + 1
end do

do i = 0, n+1
  x = i * h + xmin
  write(*,*)x,u(i)
end do

deallocate(u)
deallocate(unew)
deallocate(f)



end program poisson

