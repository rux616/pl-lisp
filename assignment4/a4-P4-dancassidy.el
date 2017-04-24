;Your Name: Dan Cassidy

;Complete the following

(require 'cl)
cl

;======================
;-- Prob 4 ---
; same as previous problem, but using a different approach
;======================

;---------------
;DO NOT CHANGE THIS FUNCTION
(defun my-test(fn2 x y) (funcall fn2 x y))
my-test

;---------------
;DEFINE THE FUNCTION, BUT DO NOT CHANGE THE SIGNATURE
(defun my-list(fn fn2 L)
  (if (< (length L) 2)
    "need length of at least 2"
    (if (my-list fn fn2 (cdr L))
      (funcall fn fn2 (car L) (car (cdr L)))
      ()
    )
  )
)
my-list

;---------------
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
