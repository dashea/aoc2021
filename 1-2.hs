main :: IO ()
main = do
    input <- map (read :: String -> Int) . lines <$> getContents
    let windows = zipWith3 (\a b c -> a + b + c) input (drop 1 input) (drop 2 input)
        increases = zipWith (<) windows (drop 1 windows)
    print $ length $ filter id increases
