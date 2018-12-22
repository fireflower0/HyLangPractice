(import time)

(defn placing-marbles [s]
  (.count s "1"))

;; (print (placing-marbles (input)))

(defn run-placing-marbles [s]
  (setv start (time.perf_counter))

  (setv output (placing-marbles s))
  (print "出力：" output)

  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn placing-marbles-test []
  (if (= (run-placing-marbles "101") 2)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-placing-marbles "000") 0)
      (print "結果：OK")
      (print "結果：NG")))

(placing-marbles-test)
