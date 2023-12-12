module Exercise where

import Prelude hiding (curry, uncurry)

factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial x = x * factorial (x - 1)

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)

curry :: ((a, b) -> c) -> a -> b -> c
curry f x y = f (x, y)

uncurry :: (a -> b -> c) -> (a, b) -> c
uncurry f (x, y) = f x y
