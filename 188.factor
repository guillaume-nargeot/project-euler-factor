! Copyright (c) 2009 Guillaume Nargeot.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel math math.functions project-euler.common ;
IN: project-euler.188

! Using modular exponentiation.
! http://en.wikipedia.org/wiki/Modular_exponentiation

<PRIVATE

: hyper-exp-mod ( a b m -- e )
    1 rot [ [ 2dup ] dip swap ^mod ] times 2nip ;

PRIVATE>

: euler188 ( -- answer )
    1777 1855 10 8 ^ hyper-exp-mod ;

! [ euler188 ] 100 ave-time
! 4 ms ave run time - 0.05 SD (100 trials)

SOLUTION: euler188
