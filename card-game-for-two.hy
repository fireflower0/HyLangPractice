(import time)

(defn card-game-for-two [n a]
  (setv a (list (map int a)))
  (.sort a :reverse True)

  (setv alice 0)
  (setv bob 0)

  (for [i (range n)]
    (if (zero? (% i 2))
        (setv alice (+ alice (get a i)))
        (setv bob (+ bob (get a i)))))

  (- alice bob))

;; (print (card-game-for-two (read) (.split (input))))

(defn run-card-game-for-two [&rest value]
  (setv start (time.perf_counter))

  (setv n (get value 0))
  (setv a [])
  (for [i (range 1 (+ n 1))] (.append a (get value i)))

  (setv output (card-game-for-two n a))
  (print "出力：" output)

  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn card-game-for-two-test []
  (if (= (run-card-game-for-two 2 3 1) 2)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-card-game-for-two 3 2 7 4) 5)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-card-game-for-two 4 20 18 2 18) 18)
      (print "結果：OK")
      (print "結果：NG")))

(card-game-for-two-test)
