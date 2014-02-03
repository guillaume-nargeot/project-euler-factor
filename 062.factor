! Copyright (c) 2009 Guillaume Nargeot.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs hashtables kernel math math.functions
project-euler.common sequences sorting ;
IN: project-euler.062

<PRIVATE

: cube ( n -- n^3 ) 3 ^ ; inline
: >key ( n -- k ) cube number>digits natural-sort ; inline
: has-entry? ( n assoc -- ? ) [ >key ] dip key? ; inline

: (euler062) ( n assoc -- n )
    2dup has-entry? [
        2dup [ >key ] dip
        [ dup 0 swap [ 1 + ] change-nth ] change-at
        2dup [ >key ] dip at first 5 =
        [ 
            [ >key ] dip at second
        ] [
            [ 1 + ] dip (euler062)
        ] if
    ] [
        2dup 1 pick cube 2array -rot
        [ >key ] dip set-at [ 1 + ] dip
        (euler062)
    ] if ;

PRIVATE>

: euler062 ( -- answer )
    1 1 <hashtable> (euler062) ;

! [ euler062 ] 100 ave-time
! 78 ms ave run time - 0.9 SD (100 trials)

SOLUTION: euler062
