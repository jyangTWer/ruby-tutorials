def wrap text, maxCol
  characters = text.split(' ')

  current_line = "a"
  texts = []
  while characters.length > 0
      word = characters.shift

      if current_line.length + word.length + 1 > maxCol
        puts current_line
        texts = []
      end

      texts.push(word)
      current_line = texts.join(' ')
  end
end

wrap "you are my best friends", 10
