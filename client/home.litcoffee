video test
===

    
     IS = InteractiveScreen = {}
     IS.count = 0
     project = ->
         IS.ctx.drawImage IS.video, 0, 0, 480, 320
         imageData = IS.canvas.toDataURL()
         if (IS.count++ % 2 is 0)
             IS.iEven.setAttribute 'xlink:href', IS.canvas.toDataURL()
             IS.iRect.setAttribute 'fill', 'url(#evenPat)'
         else
             IS.iOdd.setAttribute 'xlink:href', IS.canvas.toDataURL()
             IS.iRect.setAttribute 'fill', 'url(#oddPat)'

     @startIfReady = ()->
         console.log 'startIfReady', this
         IS.video.play()
         setInterval project, 1234

     Template.interactiveScreen.rendered = ->
         console.log 'interactiveScreen rendered', this

     Template.hiddenVideo.rendered = ->
         console.log 'hiddenVideo rendered', this
         IS.video = document.getElementById 'hiddenVideo'

     Template.hiddenCanvas.rendered = ->
         console.log 'hiddenCanvas rendered', this
         IS.canvas = document.getElementById "hiddenCanvas"
         IS.ctx = IS.canvas.getContext "2d"
         console.log IS

     Template.svgScreen.rendered = ->
         console.log 'svgScreen rendered', this
         IS.iOdd = document.getElementById "iOdd"
         IS.iEven = document.getElementById "iEven"
         IS.iRect = document.getElementById "iRect"         


