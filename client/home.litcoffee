video test
===

    
     IS = InteractiveScreen = {}
     IS.count = 0
     project = ->
         IS.count++
         IS.ctx.drawImage IS.video, 0, 0, 280, 120
         b64 = IS.canvas.toDataURL()
         IS.snap.image b64
         window.requestAnimationFrame project


     @startIfReady = ()->
         console.log 'startIfReady', this
         IS.video.play()
         IS.audio.play()
         window.requestAnimationFrame project

     Template.snapPaper.rendered = ->
         IS.snap = Snap '#snapPaper'

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


