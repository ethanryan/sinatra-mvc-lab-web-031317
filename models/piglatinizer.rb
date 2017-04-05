#my piglatinizer model code will go here.

###basing this on last lesson:::

class PigLatinizer

  attr_accessor :phrase

####no initialize needed...
  # def initialize
  #   #parameter here or not???
  #   #@phrase = phrase
  #   @sentence = sentence
  # end


#got this from here and tweaked it, second answer: http://stackoverflow.com/questions/13498688/pig-latin-method-translation

  def to_pig_latin(string)
    sentence_array = string.split
    sentence_array.map { |word| piglatinize(word) }.join(" ")
  end

  def piglatinize(str) #took out str
    #alpha = ('a'..'z').to_a
        alpha = ('a'..'z').to_a
        vowels = %w[a e i o u A E I O U] #%w(foo bar) is a shortcut for ["foo", "bar"]
        #consonants = alpha - vowels
        consonants = %w[b c d f g h j k l m n p q r s t v w x yz B C D F G H J K L M N P Q R S T V W X Y Z]

    if vowels.include?(str[0])
      return str + 'way'
    elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
      str[3..-1] + str[0..2] + 'ay'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0])
      str[1..-1] + str[0] + 'ay'
    end #end if..else
  end #end method

end #end class
