class LineFeed
    def wrap text, maxCol
      words = text.split(' ')
      concate_sentence_with_line_feed words, maxCol
    end

    def concate_sentence_with_line_feed words, maxCol
        final_texts = []
        current_line = ""
        texts = []
        while words.length > 0
          word = words.shift

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
