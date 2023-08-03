FILE_DATA = File.open('C:\RubyTests\1.txt') # потестить поможет ли добавление собаки
@file_data = FILE_DATA.read
FILE_DATA.seek(0)


def index #Вывод всех строк
  puts @file_data
end

def find(id) #поиск нужной строки
  file_array = FILE_DATA.readlines.map(&:chomp)
  if(id > file_array.size)
    puts 'Такой строки нет в файле'
    return
  end
  puts file_array[id]

end

def where(pattern)
  pattern = pattern.to_s
  File.foreach(FILE_DATA).with_index do |text, index|
    puts 'Номер строки, которая подходит под паттерн: ' + index.to_s if text.include?(pattern)
  end
end

def update(id, text) # обновление строки
  buffer = ''
  File.foreach(FILE_DATA).with_index do |old_text, index|
    id == index ? buffer += text + "\n" : buffer += old_text
  end

  File.write(FILE_DATA, buffer)

end

def delete(id)
  buffer = ''
  File.foreach(FILE_DATA).with_index do |str, index|
    id == index ? buffer += '' : buffer += str
  end

  File.write(FILE_DATA, buffer)
end

def create(name)
  File.write(FILE_DATA, "\n" + name.to_s, mode: "a")
end

### Здесь пишутся запросы



FILE_DATA.close