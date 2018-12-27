(import time)

(defn traveling [n tm x y]
  (setv res True)
  (for [i (range n)]
    (setv dt   (- (get tm (+ i 1)) (get tm i)))
    (setv dist (+ (abs (- (get x (+ i 1)) (get x i)))
                  (abs (- (get y (+ i 1)) (get y i)))))
    (when (< dt dist)
      (setv res False))
    (unless (= (% dist 2) (% dt 2))
      (setv res False)))
  (if res "Yes" "No"))

(defn run-traveling [&rest value]
  (setv start (time.perf_counter))

  ;; 入力データ作成
  (setv n (get value 0))
  (setv tm (* [0] (+ n 1)))
  (setv x  (* [0] (+ n 1)))
  (setv y  (* [0] (+ n 1)))
  (setv cnt 1)
  (for [i (range 1 (+ n 1))]
    (setv (get tm i) (get value cnt))
    (setv cnt (inc cnt))
    (setv (get x  i) (get value cnt))
    (setv cnt (inc cnt))
    (setv (get y  i) (get value cnt))
    (setv cnt (inc cnt)))

  (setv output (traveling n tm x y))
  (print "出力：" output)

  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn traveling-test []
  (if (= (run-traveling 2 3 1 2 6 1 1) "Yes")
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-traveling 1 2 100 100) "No")
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-traveling 2 5 1 1 100 1 1) "No")
      (print "結果：OK")
      (print "結果：NG")))

(traveling-test)
