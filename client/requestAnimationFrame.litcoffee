requestAnimationFrame Shim
===


     window.requestAFrame = do ->
         window.requestAnimationFrame        ||
         window.webkitRequestAnimationFrame  ||
         window.mozRequestAnimationFrame     ||
         (callback)->
             window.setTimeout callback, 100



