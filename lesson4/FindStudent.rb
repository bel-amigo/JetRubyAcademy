# Данное задание выполнено исходя из допущения, что файла result.txt не существует, либо он пустой, либо данные,
# которые в нём есть на момент запуска программы необходимо оставить на месте

STUDENTS = File.open('C:\RubyTests\students.txt')
RESULT = File.open('C:\RubyTests\result.txt', "a")


def get_students_size
  line_count = 0

  STUDENTS.each_line do |line|
    line_count += 1
  end
  STUDENTS.seek(0)
  return line_count
end


students_size = get_students_size
result_count = 0
transfered_age_result = []

loop do
  puts 'Укажите возраст студентов, которых нужно перенести в файл result.txt. ' \
  'Если вы хотите закончить работу программы, укажите возраст "-1"'
  age = gets.chomp

  if (transfered_age_result.include?(age))
    puts 'Данная возрастная группа уже добавлена в result.txt'
    next
  elsif age == '-1'
    puts 'Программа завершает работу'
    break
  elsif result_count == students_size
    puts 'Все студенты перенесены в result'
    break
  end

File.foreach(STUDENTS) do |text|
  tmp = text.split " "
  if tmp[2] == age
    RESULT.puts tmp[0] + " " + tmp[1]
    result_count += 1
  end
end
transfered_age_result.push age

  puts "Вы успешно добавили студентов возраста #{age} В result.txt. Хотите добавить студентов другого возраста? "

STUDENTS.seek(0)
end

STUDENTS.close
RESULT.close