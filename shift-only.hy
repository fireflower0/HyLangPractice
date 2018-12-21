(import time)

(defn shift-only [n a]
  (setv loop-flg True)
  (setv cnt 0)
  (while loop-flg
    (for [i (range n)]
      (unless (zero? (% (get a i) 2))
        (setv loop-flg False)))
    (for [i (range n)]
      (setv (get a i) (/ (get a i) 2)))
    (when loop-flg (setv cnt (inc cnt))))
  cnt)

(defn run-shift-only [&rest value]
  (setv start (time.perf_counter))

  (setv n (get value 0))
  (setv a [])
  (for [i (range 1 (+ n 1))] (.append a (get value i)))

  (setv output (shift-only n a))
  (print "出力：" output)

  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn shift-only-test []
  (if (= (run-shift-only 3 8 12 40) 2)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-shift-only 4 5 6 8 10) 0)
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-shift-only 6 382253568 723152896 37802240 379425024 404894720 471526144) 8)
      (print "結果：OK")
      (print "結果：NG")))

(shift-only-test)

;; (print (shift-only (read) (.split (input))))
