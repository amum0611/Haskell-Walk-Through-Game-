-- Azeem

module Euler where

getSum          :: Int -> Int
getSum x        = sum [n | n <- [1..(x-1)], (mod n 3) == 0 || (mod n 5) == 0]


fibb 0          = 0
fibb 1          = 1
fibb n          = fibb (n - 1) + fibb (n - 2)
