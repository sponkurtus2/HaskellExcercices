-- Every year that is exactly divisible by four is a leap year,
-- except for years that are exactly divisible by 100, but these centurial years are leap years, if they are exactly divisible by 400.

isLeapYear :: Int -> Bool
isLeapYear year =
  if year `mod` 4 == 0
    then
      if year `mod` 100 == 0
        then
          if year `mod` 400 == 0
            then True
            else False
        else
          if year `mod` 4 == 0
            then True
            else False
    else False
