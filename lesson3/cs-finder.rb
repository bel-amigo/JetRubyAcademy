def cs_finder
  puts 'Введите слово:'
  word = gets.chomp
  if(word.downcase[-2..-1] == 'cs')
    puts 2 ** word.length
  else
    puts word.reverse
  end

end

cs_finder