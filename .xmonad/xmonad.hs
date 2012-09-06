import XMonad
import XMonad.Layout
import XMonad.Hooks.ManageDocks
import XMonad.Config (defaultConfig)
import XMonad.Actions.GridSelect
import XMonad.Layout.NoBorders
import XMonad.Layout.Gaps
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.DynamicLog hiding (xmobar)
import XMonad.Actions.CycleWS
import qualified Data.Map as M
import XMonad.Util.Run (spawnPipe)
import System.IO (hPutStrLn)
import Graphics.X11

main :: IO ()
main = do
        xmobar <- spawnPipe "xmobar"
        xmonad defaultConfig
         { normalBorderColor  = "#121212"
         , focusedBorderColor = "#c0c0c0"
         , borderWidth        = 1
         , terminal = "xterm"
         , logHook = dynamicLogWithPP xmobarPP { ppTitle  = shorten 90 , ppLayout = (>> "") , ppOutput = hPutStrLn xmobar }
         , layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig
         , keys = \c -> mykeys c `M.union` keys defaultConfig c
         }
  where
     mykeys (XConfig {XMonad.modMask = modm}) = M.fromList $
             [ ((controlMask .|. modm, xK_Right), nextWS)
             , ((controlMask .|. modm, xK_Left),  prevWS)
             , ((modm, xK_g), spawn "google-chrome")
             ]

