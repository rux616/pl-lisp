;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

"Hello World!"
"Hello World!"

"Dan Cassidy"
"Dan Cassidy"

(+ 1 2 3) ; Calculate (1+2+3)
6         ; Result: 6

(* (+ 1 1) (- 1 100)) ; Calculate ((1+1)*(1-100))
-198                  ; Result: -198

(< 1 2) ; Check whether 1 is less than 2
t       ; Result: true

(message "Hello World!") ; Prints the text: "Hello World!"
"Hello World!"

(if (< 1 1) (message "True") (message "False")) ; Checks whether 1 is less than 1, and if so, prints "True", otherwise prints "False"
"False"

(min 4 3 2 -1 2 3 4) ; Selects the atom with the minimum value from the list.
-1                   ; Result: -1

foo ; Attempts to evaluate the variable named 'foo' and fails because it has not been declared.

(setq x 2) ; Create a (global) list named 'x' and give it the contents of a single atom: 2
2

(let ((x 5)) x) ; Create a local variable 'x' and give it the value of 5.  Then evaluate that variable.
5

x ; Prints the global variable 'x'.
2

(quote (jan feb mar apr may jun jul aug sep oct nov dec)) ; Print out a list of the abbreviated month names as a single chunk.
(jan feb mar apr may jun jul aug sep oct nov dec)

'(jan feb mar apr may jun jul aug sep oct nov dec) ; Prints out everything contained by the parenthesis (the list of abbreviated month names).
(jan feb mar apr may jun jul aug sep oct nov dec)

(car (cdr '(jan feb mar apr may jun jul aug sep oct nov dec))) ; cdr returns the rest of the list from 'feb' on, and car returns the head of THAT list.
feb

() ; An empty list, or nil.
nil

(defun 2x (x) "twice the input" (* x 2)) ; Define the function '2x' used for doubling the input parameter.
2x

(2x 4) ; Utilize the newly-defined '2x' function to double the number 4.
8

(message "My age is: %d" 20) ; Return the given message after substituting "%d" with "20".
"My age is: 20"
