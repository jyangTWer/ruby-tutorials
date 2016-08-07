class LineFeed
    def wrap text, maxCol
      characters = text.split(' ')
      final_texts = []
      current_line = ""
      texts = []
      while characters.length > 0
          word = characters.shift

          if current_line.length + word.length + 1 > maxCol
            final_texts.push(current_line)
            texts = []
          end

          texts.push(word)
          current_line = texts.join(' ')
      end

      final_texts.push(current_line) if texts.length > 0
      final_texts.join('\n')
    end
end
