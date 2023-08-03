module Console_Helper
  def self.commands_list
    puts "Введите W (выдать деньги), B (баланс), D (положить деньги на счёт) или Q (закончить работу с банкоматом):"
  end

  def self.get_command
    puts "Введите W (выдать деньги), B (баланс), D (положить деньги на счёт) или Q (закончить работу с банкоматом):"
    command = gets.chomp.downcase

    case command
    when 'w'
      puts "Введите сумму для снятия:"
      amount = gets.chomp.to_i
      @account.withdraw(amount)
    when 'd'
      puts "Введите сумму для внесения:"
      amount = gets.chomp.to_i
      @account.deposit(amount)
    when 'b'
      @account.balance
    when 'q'
      puts "Спасибо за использование нашего банкомата!"
    else
      puts "Неверная команда"
      commands_list
    end
    end

    def self.get_balance(balance)
      puts "Ваш баланс: #{balance}"
    end
    def self.not_enough_money
      puts 'Недостаточно денег на счету'
    end
  def self.say_goodbuy
    puts "Спасибо за использование нашего банкомата!"
  end
  def self.wrong_command
    puts "Вы ввели неверную команду. Попробуйте ещё раз"
  end
  def self.get_sum_to_withdraw
    puts "Введите сумму для снятия:"
  end
  def self.get_sum_to_deposit
    puts "Введите сумму для внесения:"
  end
  def self.get_start_message
    puts "Введите W (выдать деньги), B (баланс), D (положить деньги на счёт) или Q (закончить работу с банкоматом):"
  end

end