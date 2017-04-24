;Your Name: Dan Cassidy

;Complete the following

(require 'cl)
cl

;======================
;---- Problem 3 ---
;make the function call mlto-test work
;======================

;---------------
;DO NOT CHANGE THIS FUNCTION
(defun my-LT(x y) (< x y))
my-LT

;---------------
;ADD TWO MORE FUNCTIONS my-GT and my-EQ
(defun my-GT(x y) (> x y))
my-GT

(defun my-EQ(x y) (= x y))
my-EQ

;---------------
;DEFINE THE FUNCTION, BUT DO NOT CHANGE THE SIGNATURE
(defun my-list-total-order(fn L)
  (if (< (length L) 2)
    "need length of at least 2"
    (if (my-list-total-order fn (cdr L))
      (funcall fn (car L) (car (cdr L)))
      ()
    )
  )
)
my-list-total-order

;---------------
;DO NOT CHANGE THIS FUNCTION
(defun mlto-test(fn L)
  (dolist (l L) (print l) (print (my-list-total-order fn l))))
mlto-test

;---------------
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

;---------------
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

;---------------
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
