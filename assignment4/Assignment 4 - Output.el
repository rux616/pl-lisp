;-- Problem 3 ---

; call 1 ; check whether atoms within each list are equal; call and output are shown below.
(mlto-test #'my-EQ (list '(1) '(2 1) '(5 4 3 2 1) '(1 2) '(1 2 3 4 5) '(1 2 3 4 5 1) '(4 1 2 3 2 3) '(1 1 1 2 1 1) '(2 2 2 2)))

(1)

"need length of at least 2"

(2 1)

nil

(5 4 3 2 1)

nil

(1 2)

nil

(1 2 3 4 5)

nil

(1 2 3 4 5 1)

nil

(4 1 2 3 2 3)

nil

(1 1 1 2 1 1)

nil

(2 2 2 2)

t
nil

; call 2 ; check whether atoms within each list are less than the next atom; call and output are shown below.;
(mlto-test #'my-LT (list '(1) '(2 1) '(5 4 3 2 1) '(1 2) '(1 2 3 4 5) '(1 2 3 4 5 1) '(4 1 2 3 2 3) '(1 1 1 2 1 1) '(2 2 2 2)))

(1)

"need length of at least 2"

(2 1)

nil

(5 4 3 2 1)

nil

(1 2)

t

(1 2 3 4 5)

t

(1 2 3 4 5 1)

nil

(4 1 2 3 2 3)

nil

(1 1 1 2 1 1)

nil

(2 2 2 2)

nil
nil

; call 3 ; check whether atoms within each list are greater than the next atom; call and output are shown below.;

(mlto-test #'my-GT (list '(1) '(2 1) '(5 4 3 2 1) '(1 2) '(1 2 3 4 5) '(1 2 3 4 5 1) '(4 1 2 3 2 3) '(1 1 1 2 1 1) '(2 2 2 2)))

(1)

"need length of at least 2"

(2 1)

t

(5 4 3 2 1)

t

(1 2)

nil

(1 2 3 4 5)

nil

(1 2 3 4 5 1)

nil

(4 1 2 3 2 3)

nil

(1 1 1 2 1 1)

nil

(2 2 2 2)

nil
nil


;-- Problem 4 ---

;calls and corresponding results are shown

(my-list #'my-test #'= '(1))
"need length of at least 2"

(my-list #'my-test #'> '(2 1))
t

(my-list #'my-test #'< '(3 2 1))
nil

(my-list #'my-test #'> '(5 4 3 2 1))
t

(my-list #'my-test #'> '(1 2))
nil

(my-list #'my-test #'< '(1 2 3))
t

(my-list #'my-test #'= '(1 2 3 4))
nil

(my-list #'my-test #'< '(1 2 3 4 5))
t

(my-list #'my-test #'> '(1 2 3 4 5 1))
nil

(my-list #'my-test #'< '(4 1 2 3 2 3))
nil

(my-list #'my-test #'string< '(a b c d e))
t

(my-list #'my-test #'string< '(b a d))
nil

(my-list #'my-test #'string= '(abc abc abc))
t

(my-list #'my-test #'string= '(abc abc abe))
nil