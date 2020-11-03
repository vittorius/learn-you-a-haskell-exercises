module Reverse where

reverse' [] = []
reverse' [x] = [x]
reverse' [x, y] = [y, x]
reverse' (x:xs) = helper [] x xs
                  where
                    helper acc h [] = h:acc
                    helper acc h (t:ts) = helper (h:acc) t ts
