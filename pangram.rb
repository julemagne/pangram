class Pangram

  def self.pangram? phrase
    return false if phrase == ''

    phrase = phrase.downcase

    alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]

    a = alphabet.each_with_object Hash.new do |(k, v), h|
      h[k] = false
    end

    phrase.chars.each do |letter|
      a[letter] = true
    end

    if a.values.include? false
      return false
    else
      return true
    end

  end

end
