video test
===

    
     IS = InteractiveScreen = {}
     IS.count = 0
     project = ->
         IS.count++
         IS.ctx.drawImage IS.video, 0, 0, 480, 320
         b64 = IS.canvas.toDataURL()
         if (IS.count % 3 is 0)
             IS.iEven.setAttribute 'href', b64
             IS.iRect.setAttribute 'fill', 'url(#iEven)'
         if (IS.count % 3 is 1)
             IS.iOdd.setAttribute 'href', b64
             IS.iRect.setAttribute 'fill', 'url(#iOdd)'
         if (IS.count % 3 is 2)
             IS.iSVG.setAttribute 'xlink:href', b64

     @startIfReady = ()->
         console.log 'startIfReady', this
         IS.video.play()
         IS.audio.play()
         setInterval project, 123

     Template.interactiveScreen.rendered = ->
         console.log 'interactiveScreen rendered', this
         console.log 'IS', IS

     Template.hiddenVideo.rendered = ->
         console.log 'hiddenVideo rendered', this
         IS.video = document.getElementById 'hiddenVideo'

     Template.hiddenAudio.rendered = ->
         console.log 'hiddenAudio rendered', this
         IS.audio = document.getElementById 'hiddenAudio'

     Template.hiddenCanvas.rendered = ->
         console.log 'hiddenCanvas rendered', this
         IS.canvas = document.getElementById "hiddenCanvas"
         IS.ctx = IS.canvas.getContext "2d"

     Template.svgScreen.rendered = ->
         console.log 'svgScreen rendered', this
         IS.iOdd = document.getElementById "iOdd"
         IS.iEven = document.getElementById "iEven"
         IS.iRect = document.getElementById "iRect"
         IS.iSVG = document.getElementById "iSVG"


