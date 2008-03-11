''
''
'' sys\time -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __crt_sys_linux_time_bi__
#define __crt_sys_linux_time_bi__

#include once "crt/sys/types.bi"

#ifndef timeval
type timeval
	tv_sec as __time_t
	tv_usec as __suseconds_t
end type
#endif

type itimerval
	it_interval as timeval
	it_value as timeval
end type

#include once "crt/sys/select.bi"

extern "c"
declare function getitimer  (byval as integer, byval as itimerval ptr) as integer
declare function gettimeofday (byval tv as timeval ptr, byval tz as any ptr) as integer
' select() declared in sys/select.bi
declare function setitimer (byval as integer, byval as itimerval ptr, byval as itimerval ptr) as integer
declare function utimes(byval as zstring ptr, byval as timeval ptr) as integer
end extern

#endif
