(ns cars-assemble)

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (let [ 
        maximum-cars (float (* speed 221))]
    (cond
      (= speed 0) (float 0.0)
      (< speed 5) maximum-cars
      (< speed 9) (* 0.9 maximum-cars)
      (< speed 10) (* 0.8 maximum-cars)
      (= speed 10) (* 0.77 maximum-cars)
      )
  )
  )

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60))
  )
