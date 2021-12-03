main :: IO ()
main = do
    input <- map (read :: String -> Int) . lines <$> getContents
    let increases = zipWith (<) input (drop 1 input)
    print $ length $ filter id increases
