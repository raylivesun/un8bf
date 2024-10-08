;; name project s53jw
;; name program s
;; name exetsnion lisp
;; name describer jw
;; name data 53
;; name unit 53

* (/ 3 4)
;; 3/4
* (floor 3 4)
;; 0
;; 3
;; * 6/8
;; 3/4
* (* 3/4 8/3)
;; 2
* (+ 1/3 3/7)
;; 16/21
* (/ (expt 2 30) (1+ (expt 3 30)))
;; 536870912/102945566047325
(denominator (/ 2 -10))
* (/ 3 4)
;; 3/4
* (floor (/ 3 4))
;; 0
;; 3/4
* (floor 3 4)
;; 0
;; 3
* (floor -3 4)
;; -1
;; 1

* (dolist (fn '(floor ceiling truncate round))
          (dolist (args '((3 4) (-3 4)))
                  (format t "~A -> ~A" 
                  (list* fn args) (apply fn args)))
          (terpri))

(FLOOR 3 4) ;; -> 0
(FLOOR -3 4) ;; -> -1
(CEILING 3 4) ;; -> 1
(CEILING -3 4) ;; -> 0
(TRUNCATE 3 4) ;; -> 0
(TRUNCATE -3 4) ;; -> 0
(ROUND 3 4) ;; -> 1
(ROUND -3 4) ;; -> -1
;; NIL          
          
* (loop for i in '(1/2 3/2 5/2 7/2)
        collect (round i))
;;(0 2 2 4)     

* (rational 0.5)
;; 1/2
* (rationalize 0.5)
;; 1/2     
* (rational 0.2)
;; 13421773/67108864
* (rationalize 0.2)
;; 1/5
;; see next paragraph
* (list (float *) (float **))
;; (0.2 0.2)
* (float 1/7)
;; 0.14285715
* (float 1/7 1d0)
;; 0.14285714285714285d0
;; see below
* (float 0.1f0 1d0)
;; 0.10000000149011612d0
(* 2f0 2d0)

* *read-default-float-format*
;; SINGLE-FLOAT
* (- 1.00000001 1)
;; 0.0
;; * 1.00000001
;; 1.0
* (- 1.00000001d0 1)
;; 9.99999993922529d-9
* (setf *read-default-float-format* ’double-float)
;; DOUBLE-FLOAT
* (- 1.00000001 1)
;; 9.99999993922529e-9

* *read-default-float-format*
;; SINGLE-FLOAT
;; * 1.0f0
;; 1.0
;; <--
;; * 1.0d0
;; 1.0d0
* (setf *read-default-float-format* 'double-float)
;; DOUBLE-FLOAT
;; * 1.0f0
;; 1.0f0
;; * 1.0d0
;; 1.0

(defun foo (orig &optional (n 10))
      (let ((x orig))
           (loop repeat n do (setf x (sqrt x)))
           (loop repeat n do (setf x (* x x)))
      (list x (* (/ (abs (- x orig)) orig) 100))))

