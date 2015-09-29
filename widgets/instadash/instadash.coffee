class Dashing.Instadash extends Dashing.Widget

  ready: ->
    @currentIndex = 0
    @photoElem = $(@node).find('.photo-container')
    @nextPhoto()
    @startCarousel()

  onData: (data) ->
    @currentIndex = 0

  startCarousel: ->
    setInterval(@nextPhoto, 10000)

  nextPhoto: =>
    photos = @get('photos')
    if photos
      @photoElem.fadeOut =>
        @currentIndex = (@currentIndex + 1) % photos.length
        @set 'current_photo', photos[@currentIndex]
