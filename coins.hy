(import time)

(defn coins [a b c x]
  (setv cnt 0)
  (setv total 0)

  (for [i (range (+ a 1))]
    (for [j (range (+ b 1))]
      (for [k (range (+ c 1))]
        (setv total (+ (* 500 i) (* 100 j) (* 50 k)))
        (when (= total x) (setv cnt (inc cnt))))))

  cnt)

;; (print (coins (read) (read) (read) (read)))

(defn run-coins [a b c x]
  (setv start (time.perf_counter))

  (setv output (coins a b c x))
  (print "出力：" output)

  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn coins-test []
  (if (= (run-coins 2 2 2 100) 2)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-coins 5 1 0 150) 0)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-coins 30 40 50 6000) 213)
      (print "結果：OK")
      (print "結果：NG")))

(coins-test)
