(import time)
(import math)

(defn find-sum-of-digits [n]
  (setv sums 0)
  (while (> n 0)
    (setv sums (+ sums (% n 10)))
    (setv n (math.floor (/ n 10))))
  sums)

(defn some-sums [n a b]
  (setv total 0)
  (setv sums 0)
  (for [i (range (+ n 1))]
    (setv sums (find-sum-of-digits i))
    (when (and (>= sums a) (<= sums b))
      (setv total (+ total i))))
  total)

;; (print (some-sums (read) (read) (read)))

(defn run-some-sums [n a b]
  (setv start (time.perf_counter))

  (setv output (some-sums n a b))
  (print "出力：" output)

  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn some-sums-test []
  (if (= (run-some-sums 20 2 5) 84)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-some-sums 10 1 2) 13)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-some-sums 100 4 16) 4554)
      (print "結果：OK")
      (print "結果：NG")))

(some-sums-test)
