import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import System.IO.UTF8

myTerminal = "gnome-terminal"

myLayout = avoidStruts (tiled ||| Mirror tiled ||| Full) ||| Full
  where
       -- default tiling algorithm partitions the screen into two panes
       tiled   = Tall nmaster delta ratio
       -- The default number of windows in the master pane
       nmaster = 1
       -- Default proportion of screen occupied by master pane
       ratio   = 1/2
       -- Percent of screen to increment by when resizing panes
       delta   = 3/100

-- myLogHook = dynamicLogWithPP dzenPP

myLogHook h = (dynamicLogWithPP (myPP h))

myPP h = defaultPP 
         { ppCurrent         = wrap "^bg(#e5f9ff)^fg(#105468)" "^bg()^fg()"
         , ppVisible         = wrap "^fg(#a00000)" "^fg()"
         , ppHidden          = wrap "^fg(#ffffff)" "^fg()"
         , ppHiddenNoWindows = wrap "^fg(#7eacb9)" "^fg()"
         , ppSep             = " | "
         , ppWsSep           = "  "
         , ppTitle           = shorten 80
         , ppOrder           = (take 3) . workspaceTag
         , ppOutput          = System.IO.UTF8.hPutStrLn h
         }
    where workspaceTag (x:xs) = ("[ " ++ x ++ " ]") : xs

main = xmonad defaultConfig {
    modMask = mod4Mask,
    layoutHook = myLayout,
    logHook = myLogHook
}

