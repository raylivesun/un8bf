;; name project rt75ms
;; name program rt
;; name extension lisp
;; name describer ms
;; name data 75
;; name unit 75

;; business logic reference the best
(setf (ext:long-float-digits) 256)
#x256
;; bread new foo list series stream
(foo 2l0 50)
#x50

(defun foo-r (orig &optional (n 10))
       (let ((x orig))
            (loop repeat n do (setf x (cr:sqrt-r x)))
            (loop repeat n do (setf x (cr:*r x x)))
       x))
       
#<INPUT CONCATENATED-STREAM #<IO TERMINAL-STREAM>>

;; io logical context thems to happy dialog items
+2.00000000000000000000...       
;; static io input terminal
#<IO SYNONYM-STREAM *TERMINAL-IO*>
;; describer list linear values numeric
(cr:sqrt-r 2)
;; stored list stream input logical series stream
#<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>
;; logic stream computing series list come back
(cr:print-r * 30)
;; logic stream logic format block history changes view and preview block
#<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>
;; ore been list format series stream logic gates
(cr:print-r ** 40)
;; format list input series stream gates
#<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>
;; bio method chemical series stream
(cr:print-r *** 50)
;; foot source popup liked list series stream
#<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>

;; equip tell changes very false peoples
(sqrt -1)

* #C(8 -9)
;; #C(8 -9)

#<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>

* #c(2/4 1/2)
;; #C(1/2 1/2)

#<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>

* #c(2/4 .5)
;; #C(0.5 0.5)

#<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>


* #c(2d0 2f0)
;; #C(2.0d0 2.0d0)

* (complex 1/2 3)
;; #C(1/2 3)

* (complex 1 0)
;; 1

;; signal following document series documenation stream
(* #c(2.0 3.0) #c(-1.0 2.0))

;; document series stream formly history documenation guides
(sin #c(2.0d0 3.0))

;; liked peoples friends series stream computing document to history guides
(abs #c(3 -4))

;; static reference until maping develop
#<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>
;; cpi series stream logic expert series documenation guides books library common lisp
(1+ (exp (* pi #c(0 -1))))

;; expert series stream document develop series logical popup
(parse-integer " 42")

;; this day the best and night quux
(parse-integer "42 quux")

;; formly 20% day dollar and night fantastic handle document history the best
(parse-integer "42 quux" :junk-allowed t) 

;; static reference ambil method pole questing series stream history document
(defun parse-integers (string)
       (let ((start 0)
            (end (length string))
            (result '()))
       (loop
            (when (>= start end)
                  (return (nreverse result)))
            (multiple-value-bind (number pos)
                  (parse-integer string :start start :junk-allowed t)
            (cond (number
                  (push number result)
      (setf start pos))
(t (setf start end)))))))


