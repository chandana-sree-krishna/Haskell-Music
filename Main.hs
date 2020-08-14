import qualified Data.ByteString.Lazy as B
import qualified Data.ByteString.Builder as B
import Data.Foldable
import System.Process
import Text.Printf

outputFilePath :: FilePath
outputFilePath = "output.bin"

volume :: Float
volume = 0.5

-- volume controls the volume of sine wave
-- step controls the pitch, frequency

wave :: [Float]
wave = map (* volume) $ map sin $ map (* step) [0.0 .. 48000] 
  where step = 0.02

--ffplay

save :: FilePath -> IO ()
save filePath = B.writeFile filePath $  B.toLazyByteString $ fold $ map B.floatLE wave

play :: IO ()
play = do
  save outputFilePath
  _ <- runCommand $ printf "ffplay -f f32le -ar 48000 %s" outputFilePath
  return ()
