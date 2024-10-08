;; name project oh2bci
;; name program oh
;; name extension lisp
;; name describer bci
;; name data 2
;; name unit 2

;; business logic reference static logical template languages
* (format nil "~{~A~^, ~}" (list "C" "C++" "C#"))
;; "C, C++, C#"

* (defun list-join (separator list)
         (loop for (element . more) on list
               collect element
         when more
         collect separator))

* (list-join '+ (loop for i below 5 collect i))
;; (0 + 1 + 2 + 3 + 4)         


"a string",3,3.2
"another string","string with \"quotes\"",12
"string, with comma","",3.5E3

* (defparameter *csv-readtable* (copy-readtable))
;; *CSV-READTABLE*
* (set-syntax-from-char #\, #\Space *csv-readtable*)
;; T
* (defun read-csv-line (string)
        (let ((*readtable* *csv-readtable*))
             (with-input-from-string (stream string)
       (loop for object = (read stream nil nil)
             while object
       collect object))))
       
 
 * (with-open-file (stream "/tmp/test.csv")
            (loop for line = (read-line stream nil nil)
                 while line
           collect (read-csv-line line)))
           (("a string" 3 3.2)
            ("another string" "string with \"quotes\"" 12)
            ("string, with comma" "" 3500.0))      
            
;; see <http://en.wikipedia.org/wiki/Fermat_number>
* (defun fermat (n) (1+ (expt 2 (expt 2 n))))
;; FERMAT
* (fermat 7)
;; 340282366920938463463374607431768211457
* (fermat 8)
;; wrapped around so that it fits on the book page
;; 1157920892373161954235709850086879078532699846656405640394575840079
* (gcd * **) 

(loop for n in (list most-positive-fixnum (1+ most-positive-fixnum))
               append (loop for type in '(fixnum bignum integer)
               collect (typep n type)))   
               
(1+ (max (integer-length most-positive-fixnum)
         (integer-length most-negative-fixnum)))

(mod (* 58 74051161) (expt 2 32))


(defconstant +mod+ (expt 2 32))
(defun plus (x y) (mod (+ x y) +mod+))
(defun times (x y) (mod (* x y) +mod+))
;; etc.


(defconstant +mod+ (expt 2 32))
(defun plus-mod (x y) (mod (+ x y) +mod+))
(defun plus-rem (x y) (rem (* x y) +mod+))

(defun plus-mod (x y)
      (declare (type (unsigned-byte 32) x y))
      (mod (+ x y) (expt 2 32)))                                
      
      
(list (list #b101010 #o52 #x2A)
      (loop for fmt in '("~B" "~O" "~X")
      collect (format nil fmt 42))) 
      
(loop for fmt in '("~R" "~:R" "~@R")
          collect (format nil fmt 42))
          

;; the default values
* *read-base*
;; 10
* *print-base*
;; 10
;; switch to binary input
* (setf *read-base* 2)
;; 2
* 101010
;; 42
;; you can still override this with #
* #x2A
;; 42
;; this does NOT switch back to decimal because "10" is read
;; as a binary number...
* (setf *read-base* 10)
;; 2
;; this works
* (setf *read-base* 1010)
;; 10
;; now switch to hexadecimal output
* (setf *print-base* 16)
;; this is the sixteen we just entered, but already in hex
;; 10
;; * 42
;; 2A
* (setf *print-radix* t)
;; T
;; * 42
;; #x2A
                     
