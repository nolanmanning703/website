window.pixels = do ->
  pixels = create: (bitmap, container) ->
    fill = document.createElement('div')
    fill.style.height = (100 / bitmap.data.length) + '%'
    fill.className = 'fill'
    for row in bitmap.data
      for color in row
        pixel = document.createElement("div")
        pixel.style.width  = (100 / row.length) + '%'
        pixel.style.height = '100%'
        pixel.style.float = 'left'
        pixel.style.backgroundColor = color
        pixel.className = 'pixel'
        tint = document.createElement('div')
        tint.style.width = '100%'
        tint.style.height = '100%'
        tint.className = 'tint'
        pixel.appendChild(tint)
        fill.appendChild(pixel)
      clear = document.createElement("div")
      clear.style.clear = 'both'
      fill.appendChild(clear)
    container.appendChild(fill)

  pixels