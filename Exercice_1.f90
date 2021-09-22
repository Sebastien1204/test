recursive function C(n,p) result(r)

integer, intent (in) :: n
integer, intent (in) :: p
integer :: r

if (p==0 .or. n==p) then
    r = 1
else
    r  =  C(n-1,p) + C(n-1,p-1)
endif
end function C

program binome

integer :: n
integer :: p
integer :: C
character(8) :: arg_n
character(8) :: arg_p

call getarg(1,arg_n)
call getarg(2,arg_p)
read(arg_n,*) n
read(arg_p,*) p
if (p<=n .and. n>=0 .and. p>=0) then
    print*, C(n,p)
endif
end program binome