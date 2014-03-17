
class Words

  attr_accessor :str

  def initialize(str)
    @str = str
  end

  def word_freq
    words = str.scan(/\w+/)
    count = {}
    words.each do |word|
      if !count.has_key?(word)
        count[word] = 0
      end
      count[word] += 1
    end
    count
  end


  def char_freq
    chars = str.scan(/[a-zA-Z]/)
    chars_count = {}
    chars.each do |char|
      if !chars_count.has_key?(char)
        chars_count[char] = 0
      end
      chars_count[char] += 1
    end
    chars_count
  end


  def count_number_of_symbol
    syms = str.scan(/[-!$%^&*()_+|~=`{}\[\]:";'<>?,.\/]/)
    syms_count = {}
    syms.each do |sym|
      if !syms_count.has_key?(sym)
        syms_count[sym] = 0
      end
      syms_count[sym] += 1
    end
    syms_count
  end

  def top_three_words
    words = word_freq.sort_by {|k, v| v}
    [words[-1],
     words[-2],
     words[-3]]
  end

  def top_three_letters
    letters = char_freq.sort_by{|k, v| v}
    [letters[-1],
     letters[-2],
     letters[-3]]
  end

  def num_word_once
    array = word_freq
    word_array = []
    array.each do |word|
      if word[1] == 1
        word_array << word
      end
    end
    word_array.size
  end

  def letter_not_used
    alphabets =("a".."z").to_a
    alpha_array = []
    char_freq.each do |char|
      alpha_array << char[0]
    end
    alphabets - alpha_array.uniq.sort
  end

end




