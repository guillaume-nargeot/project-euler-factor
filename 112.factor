! Copyright (c) 2009 Guillaume Nargeot.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays kernel math project-euler.common sequences sorting ;
IN: project-euler.112

<PRIVATE

: bouncy? ( n -- ? )
    number>digits dup natural-sort
    [ = not ] [ reverse = not ] 2bi and ;

PRIVATE>

: euler112 ( -- answer )
    0 0 0 [
        2dup swap 99 * = not
    ] [
        [ 1 + ] 2dip pick bouncy? [ 1 + ] [ [ 1 + ] dip ] if
    ] do while 2drop ;

! [ euler112 ] 100 ave-time
! 2749 ms ave run time - 33.76 SD (100 trials)

SOLUTION: euler112
