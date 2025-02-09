;even-odd
(define(even-bits n)
  (cond((= n 0)1)
       ((=(remainder n 2)0)
          (even-bits (quotient n 2)))
       (else(odd-bits(quotient n 2)))
       ))
(define(odd-bits n)
  (cond((= n 0)0)
       ((=(remainder n 2)0)
          (odd-bits (quotient n 2)))
       (#t(even-bits(quotient n 2)))
       ))
(define(display-bin n)
  (display(remainder n 2))
  (if(= n 0)0 (display-bin (quotient n 2)))
       )
(define(report-results n)
  (display "Happy birthday to you!\n\t")
  (display n)(display " (decimal)\n\t")
  (display-bin n)(display "(reversed binary)\n")
  (display "\teven?\t")(display (if(=(even-bits n)1) "yes" "no"))
  (newline)
  (display "\todd?\t")(display (if(=(odd-bits n)1) "yes" "no"))
  (newline)
  0
       )
;***** Date of YOUR birthday *******
(define dd 1)
(define mm 10)
(define yyyy 1998)
;***********************************
(report-results (+ (* dd 1000000)
                   (* mm 10000)
                   yyyy))


 
