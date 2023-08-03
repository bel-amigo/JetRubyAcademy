def print_pokemons(pokemon_list)
  result = '['
  pokemon_list.each do |pokemon|
    #print pokemon
    #print ','
    #pokemon.each do |key, value|
    result += "{name: #{pokemon[:name]}, color: #{pokemon[:color]}}, "
      # end
  end
  result.chop!.chop!
  result += ']'
  puts result
end

def add_pockemons
  pokemon_list = []
  puts 'Сколько покемонов добавить'
  how_many = gets.chomp
  how_many_is_integer = !!Integer(how_many , exception: false)
  if(how_many_is_integer == false )
    puts 'Введено некорректное число. Программа завершает работу'
  else
    how_many = how_many.to_i
    how_many.times do
        puts 'Введите имя покемона:'
        name = gets.chomp
        puts 'Введите цвет покемона:'
        color = gets.chomp
        pokemon_hash = {:name => name, :color => color}
        pokemon_list.push(pokemon_hash)
    end
    return pokemon_list
  end
end

pokemons = add_pockemons
print_pokemons pokemons