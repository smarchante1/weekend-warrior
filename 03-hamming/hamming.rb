class Hamming
  def self.compute(string1, string2)  
    str1 = string1.split('')
    str2 = string2.split('')
    hamming_count = 0

    str1.each_index do |i|
      hamming_count += 1 if str1.values_at(i) != str2.values_at(i)
    end
    
    unless str1.length == str2.length
      raise ArgumentError, "Strings not the same length."
    end
      return hamming_count
  end
end
