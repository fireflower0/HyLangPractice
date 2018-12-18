(import time)

(defn daydream [s]
  (if (= (.replace (.replace (.replace (.replace s "eraser" "") "erase" "") "dreamer" "") "dream" "") "")
      "YES"
      "NO"))

;; (print (daydream (input)))

(defn run-daydream [s]
  (setv start (time.perf_counter))

  (setv output (daydream s))
  (print "出力：" output)

  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn daydream-test []
  (if (= (run-daydream "erasedream") "YES")
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-daydream "dreameraser") "YES")
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-daydream "dreamerer") "NO")
      (print "結果：OK")
      (print "結果：NG")))

(daydream-test)
