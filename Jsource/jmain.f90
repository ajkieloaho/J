program j
  CHARACTER*32 :: arg
	logical::error
	!logical per

    CALL get_command_argument(1, arg)
	!	le=LEN_TRIM(arg)
!		write(6,*)'learg ',le,arg

		call j_sub(.true.,arg,error)
		! first argument is .true. if the control remains in J after error 
		! or after computing the attached script file
		!if the first argument is .fasle. then just the scrip file is includedn
		! after using the script file all open files are closed in the return.
		! argument arg ifs the name of the script file 
		! if arg.eq.' ' then the file j.par is included if it exists
		!if the first line of the script file looks like
		!*6000 then the number given tells the number of named objects allocated
		! if the number is not given the default value is 5000
		! note that '*' needs to be the first character
    ! IF (le== 0)then
		! call j_sub(per)
		! else
		! write(6,*)arg
		! call j_sub(per) !,arg(1:  le))
		! endif


end program