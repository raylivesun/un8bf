;; name project ik0hit
;; name program ik
;; name extension lisp
;; name describer hit
;; name data 0
;; name unit 0

;; assumes something like ASCII - see footnote
;; see https://en.wikipedia.org/wiki/Digital_root
* (defun digital-root (string)
         (assert (every (lambda (char)
                 (char<= #\0 char #\9)) string)
                         (string)
                 "~S doesn’t denote a non-negative decimal integer."
          string)
          (loop for char across string
                sum (- (char-code char) (char-code #\0)) into result
                finally (return
                (if (> result 9)
         (digital-root (princ-to-string result))
         result))))
         
* (digital-root "12")
;; 3
* (digital-root "1234")
;; 1
;; assumes something like ASCII - see footnote
;; see https://en.wikipedia.org/wiki/ROT13
* (defun rot13-char (char)
        (cond ((char<= #\a char #\z)
        (code-char (+ (mod (+ (- (char-code char) (char-code #\a))
               13)
               26)
        (char-code #\a))))
        ((char<= #\A char #\Z)
        (code-char (+ (mod (+ (- (char-code char) (char-code #\A))
              13)
              26)
        (char-code #\A))))))

* (map 'string #'rot13-char "foobar")
;; "sbbone"
* (map 'string #'rot13-char *)
;; "foobar"  

#<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>: After #\# is
      #\RIGHT_SINGLE_QUOTATION_MARK

* (let ((string "frob"))
       (values (aref string 0)
               (char string 1)
                     (schar string 2)
       (subseq string 3 4)))                  
       
* (let ((string "baz"))
       (loop for i below (length string)
             collect (char string i)))    

* (coerce "Recipes" 'list)


* (defun n-rot13-string (string)
          (loop for i below (length string)
                do (setf (char string i)
          (rot13-char (char string i)))))
             

* (defparameter *string* (copy-seq "foobar"))
;; *STRING*
* (n-rot13-string *string*)
;; NIL
* *string*
;; "sbbone"      


* (defun join (separator list)
         (with-output-to-string (out)
             (loop for (element . more) on list
                   do (princ element out)
            when more
                   do (princ separator out))))

* (join #\Space ’("This" "is" "it"))
;; "This is it"
* (join #\- '(2024 10 8))
;; "2024-10-8"
* (join ", " '("C" "C++" "C#"))
"C, C++, C#"
* (join "" '("Hallo" "ween"))
"Halloween" 
* (join #\- '())
;; ""
* (join #\- '("One item only"))
;; "One item only"      

(defun join (separator list)
       (with-output-to-string (out)
            (loop (princ (pop list) out)
                  (unless list (return))
                         (princ separator out))))
