(defn otoshidama [n y]
  (setv res10000 -1)
  (setv res5000 -1)
  (setv res1000 -1)
  (setv c 0)
  (setv total 0)

  (for [a (range (+ n 1))]
    (for [b (range (- (+ n 1) a))]
      (setv c (- n a b))
      (setv total (+ (* 10000 a) (* 5000 b) (* 1000 c)))
      (when (= total y)
        (setv res10000 a)
        (setv res5000 b)
        (setv res1000 c))))

  (+ (str res10000) " " (str res5000) " " (str res1000)))

(print (otoshidama (read) (read)))
