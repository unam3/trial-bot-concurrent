module Main where

import Control.Concurrent (forkIO)
import System.Environment (getArgs)
import qualified Tg
import qualified Vk

main :: IO ()
main =  getArgs
    >>= \ args -> case length args of
        9 -> let {
                (vkArgs, tgArgs) = splitAt 5 args;
            } in forkIO (Vk.startBotWithLogger vkArgs)
            >> Tg.startBotWithLogger tgArgs
        _ -> error $ mconcat [
                "error: exactly nine arguments needed:\n",
                "   vkToken, vkGroupId, vkHelpMsg, vkRepeatMsg, vkEchoRepeatNumberStr,",
                "   tgToken, tgHelpMsg, tgRepeatMsg, tgEchoRepeatNumber"
            ]
