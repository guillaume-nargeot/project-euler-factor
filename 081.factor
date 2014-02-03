! Copyright (c) 2009 Guillaume Nargeot.
! See http://factorcode.org/license.txt for BSD license.
USING: fry io.encodings.ascii io.files locals kernel math
math.order math.parser math.ranges sequences splitting
project-euler.common ;
IN: project-euler.081

! Shortest path problem solved using Dijkstra algorithm.

<PRIVATE

: source-081 ( -- matrix )
    "resource:extra/project-euler/081/matrix.txt"
    ascii file-lines [ "," split [ string>number ] map ] map ;

: get-matrix ( x y matrix -- n ) nth nth ;

: change-matrix ( x y matrix quot -- )
    [ nth ] dip change-nth ; inline

:: minimal-path-sum-to ( x y matrix -- n )
    x y + zero? [ 0 ] [
        x zero? [ 0 y 1 - matrix get-matrix
        ] [ 
            y zero? [
                x 1 - 0 matrix get-matrix
            ] [
                x 1 - y matrix get-matrix
                x y 1 - matrix get-matrix
                min
            ] if
        ] if
    ] if ;

: update-minimal-path-sum ( x y matrix -- )
    3dup minimal-path-sum-to '[ _ + ] change-matrix ;

: (euler081) ( matrix -- n )
    dup first length iota dup
    [ pick update-minimal-path-sum ] cartesian-each
    last last ;

PRIVATE>

: euler081 ( -- answer )
    source-081 (euler081) ;

! [ euler081 ] 100 ave-time
! 9 ms ave run time - 0.39 SD (100 trials)

SOLUTION: euler081
