(import time)

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

(defn run-otoshidama [n y]
  (setv start (time.perf_counter))

  (setv output (otoshidama n y))
  (print "出力：" output)

  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn otoshidama-test []
  (if (= (run-otoshidama 9 45000) "4 0 5")
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-otoshidama 20 196000) "-1 -1 -1")
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-otoshidama 1000 1234000) "26 0 974")
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-otoshidama 2000 20000000) "2000 0 0")
      (print "結果：OK")
      (print "結果：NG")))

(otoshidama-test)
