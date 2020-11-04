{-
 - For this exercise, we are dealing with a type for Colors of the rainbow
 - The typeclass is defined here, and note its English spelling.
 - For more information on how this is done, look ahead to:
 - http://learnyouahaskell.com/making-our-own-types-and-typeclasses
 -
 - Have a play with the Color in ghci, try the succ and pred functions and so on.
 -}
data Color = Red | Orange | Yellow | Green | Blue | Indigo | Violet
    deriving (Eq, Ord, Show, Bounded, Enum)

{-
 - Again, you should be able to write these functions in one line,
 - using the information from the chapter http://learnyouahaskell.com/types-and-typeclasses
 - and the chapter before
 -}

{-
 - The Color typeclass is of type Ord
 - What is the "first" (or least) Color
 -}
firstColor = minBound :: Color

-- List the Colors in reverse order
-- reverseColorOrder = helper Red []
--     where
--         helper Violet acc = Violet:acc
--         helper c acc = helper (succ c) (c:acc)

reverseColorOrder = [(maxBound :: Color), pred (maxBound :: Color)..]

{-
 - Mix two Colors together, to produce the average value of the two.
 - Example: paintMix Orange Green = Yellow
 - If necessary, favour the "higher" value when computing the average.
 - For example: paintMix Green Violet = Indigo
 - Hint: Integer division can be performed with the quot function: quot 7 2 = 3
 -}
paintMix c1 c2 = (toEnum $ (fromEnum c1 + fromEnum c2) `div` 2) :: Color
