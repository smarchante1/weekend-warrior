class Alouette
  def self.lines_for_verse(verse_num)
    et_lines = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!"]

    # return 'Et la tête!' on the very first verse
    if verse_num == 0
      return [et_lines[0]]
    end
    return et_lines[0..verse_num].reverse
  end

  def self.verse(verse_num)
    lines = lines_for_verse(verse_num)
    lines.map! do |line|
      line[3..-2]
    end
    
    verse = "Je te plumerai #{lines.first}.\nJe te plumerai #{lines.first}."
    
    lines.each do |line|
      verse += "\nEt #{line}!\nEt #{line}!"
    end

    2.times do 
      verse << "\nAlouette!"
    end
    
    verse << "\nA-a-a-ah"
    return verse
  end

  def self.sing
    line = ""
    8.times do |i|
      line << "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n"
      line << self.verse(i)
      line << "\n\n"
    end
    line << "Alouette, gentille alouette,\nAlouette, je te plumerai."
    return line

  end
end
