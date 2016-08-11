class AutoWrap
    def wrap text, maxCol
        maxCol = maxCol.to_i
        raise ArgumentError, 'Please enter a reasonable maxCol' if maxCol==0
        words = text.split(' ')
        concate_sentence_with_line_feed words, maxCol
    end

    def concate_sentence_with_line_feed words, maxCol
        line_feed_texts = []
        line_feed_texts = get_sentence words, maxCol
        line_feed_texts.join('\n')
    end

    def get_sentence words, maxCol
        final_texts = []
        current_line = ""
        texts = []
        words.each do |word|
            raise ArgumentError, 'Length of one word already exceeds the max length' if word.length > maxCol
            if current_line.length + word.length + 1 > maxCol
                final_texts.push(current_line)
                texts = []
            end
            texts.push(word)
            current_line = texts.join(' ')
        end
        final_texts.push(current_line) if texts.length > 0
        final_texts
    end
end
