def greetings(name, surname, age)

  correct_answer = true

  if !name.is_a? String
    puts 'Неверно указано имя'
    correct_answer = false
  end

  if !surname.is_a? String
    puts 'Неверно указана фамилия'
    correct_answer = false
  end

  begin
    # код, который может породить исключение
    age = Integer(age)
  rescue
    puts 'Вместо возраста поступили некорректные данные'
    correct_answer = false
  end


  if correct_answer == true
    print "Привет, #{name} #{surname}."
    if age < 18
      puts  ' Тебе меньше 18 лет, но начать учиться программировать никогда не рано'
    else
      puts ' Самое время заняться делом!'
    end
  else
    puts 'Никаких приветствий, пока в поданных данных есть ошибки'
  end
end


