(print "Hello World") ;; => Hello World

(+ 2 3 5) ;; =>10
(+ 1 2);; => 3

(define-data-var counter int 0) ;; function name type initial

;; get-counter funtion - to get the counter value 

(define-read-only (get-counter)
  (var-get counter))

(get-counter) ;; printing the counter value 

;; increment-counter funtion - to increment the counter value
;; public function always requires the responce 

(define-public (increment-counter)
  (let ((value (var-get counter)))
    (ok (var-set counter (+ value 1)))))

(increment-counter) ;;calling the increment-counter function

(get-counter);;printing the counter value
  
(print tx-sender)

(stx-get-balance tx-sender)
