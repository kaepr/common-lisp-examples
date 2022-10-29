(with-open-file (my-stream "data.txt" :direction :input)
    (read my-stream))
