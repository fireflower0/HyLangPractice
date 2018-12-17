(import time)

(defn product [a b]
  (if (zero? (% (* a b) 2))
      "Even"
      "Odd"))

;; (print (product (read) (read)))

(defn run-product [a b]
  (setv start (time.perf_counter))
  (setv output (product a b))
  (print "出力：" output)
  (setv elapsed-time (- (time.perf_counter) start))
  (print "実行時間：" (* elapsed-time 1000) "[ms]")
  output)

(defn product-test []
  (if (= (run-product 3 4) "Even")
      (print "結果：OK")
      (print "結果：NG"))
  (if (= (run-product 1 21) "Odd")
      (print "結果：OK")
      (print "結果：NG")))

(product-test)
