(ns binary-search)
(defn middle [my-vector] ;; <- arglist goes here
  (quot (count my-vector) 2)
)

(defn search-for 
  ([needle haystack] (search-for needle haystack 0)) 
  ([needle haystack index]
  (if (empty? haystack)
    (throw (Exception. "not found"))
    (let [my-middle (middle haystack)
          my-val (nth haystack my-middle)]
      (cond 
        (= needle my-val) (+ my-middle index) 
        (< needle my-val) (recur needle (take my-middle haystack) index)
        (> needle my-val) (recur needle (drop (inc my-middle) haystack) (+ 1 index my-middle))
        )
      )
    )
  
  ))
