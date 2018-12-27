def caesar_cipher(string, n)
  m = n/26
  string.split(//).map{|char|
    if !((char.ord >= 65 and char.ord <= 90) or (char.ord >= 97 and char.ord <= 122))
      char
    else
      char_num = char.ord
      n.times do 
        char_num += 1
      end
      m.times do
        char_num -= 26
      end
      if char_num > 90 and char_num < 97
        char_num -= 26
      elsif char_num > 122
        char_num -= 26
      end
      char = char_num.chr
    end
  }.join()
end