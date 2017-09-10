class DictionaryUI
  def get_file_location
    puts "Where is your dictionary"
    @location = gets.strip
  end

  def dictionary_stats
    first_letter = Hash.new(0)
    @dictionary_lines = File.readlines(@location)
    ('a'..'z').each do |letter|
      @dictionary_lines.each do |word|
        first_letter[letter] += 1 if word[0] == letter 
      end
    end
    first_letter.each do |first_letter, count|
      puts "#{first_letter}: #{count}"
    end
  end

  def go 
    get_file_location
    dictionary_stats
  end
end

a = DictionaryUI.new
a.go