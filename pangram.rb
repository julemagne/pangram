class Pangram

  # def self.pangram? phrase
  #   return false if phrase == ''
  #
  #   phrase = phrase.downcase
  #
  #   alphabet = Array('a'..'z')
  #
  #   a = alphabet.each_with_object Hash.new do |(k, v), h|
  #     h[k] = false
  #   end
  #
  #   phrase.chars.each do |letter|
  #     a[letter] = true
  #   end
  #
  #   if a.values.include? false
  #     return false
  #   else
  #     return true
  #   end
  #
  # end

  def self.pangram? str
    letters = str.gsub(/[^a-z]/i,"")
    letters.downcase.chars.uniq.count == 26
  end
end
