import Data.Char (isAsciiLower, toLower)
import Data.List (nub)

isPanagram :: String -> Bool
isPanagram phrase =
  let -- First, turn the frase into lowercase
      lowerCasePhrase = map toLower phrase

      -- Then, filter only the letters between a and z
      letters = filter (\c -> isAsciiLower c) lowerCasePhrase

      -- Obtain the unique letters
      uniqueLetters = nub letters
   in -- Verify if theres 26 unique letters
      length uniqueLetters == 26
