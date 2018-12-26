(import time)

(defn kagami-mochi [a]
  (len (set a)))

(defn run-kagami-mochi [&rest value]
  (setv start (time.perf_counter))

  (setv n (get value 0))
  (setv a [])
  (for [i (range 1 (+ n 1))] (.append a (get value i)))

  (setv output (kagami-mochi a))
  (print "出力：" output)

  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn kagami-mochi-test []
  (if (= (run-kagami-mochi 4 10 8 8 6) 3)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-kagami-mochi 3 15 15 15) 1)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-kagami-mochi 7 50 30 50 100 50 80 30) 4)
      (print "結果：OK")
      (print "結果：NG")))

(kagami-mochi-test)
