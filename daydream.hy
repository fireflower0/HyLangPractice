(defn daydream [s]
  (if (= (.replace (.replace (.replace (.replace s "eraser" "") "erase" "") "dreamer" "") "dream" "") "")
      "YES"
      "NO"))

(print (daydream (input)))
