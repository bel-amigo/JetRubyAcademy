
def start_cash_machine
  puts 'Привет, бро, я банкомат БроБотБанка. Скажи у тебя уже есть счёт в нашем банке?'
  if File.exist?('C:\RubyTests\balance.txt')
    @bank_data = File.open('C:\RubyTests\balance.txt', "r")
    @START_BALANCE = @bank_data.read.to_f
    puts "Ага, вижу счёт есть. У тебя на нём #{@START_BALANCE} юаней"
    @bank_data.close
  else
    @START_BALANCE = 100.0
    puts "Денег у тебя в нашем банке нет, но ты держись. Дарим тебе #{@START_BALANCE} юаней, чтобы ты не грустил"
  end
  @current_balance = @START_BALANCE
  # В задании требуется константа, я её сделал, но хоть убейте не поинмаю зачем, я же потом не смогу изменить в ней сумму
  # во время операций, поэтому я тут же перенёс ей значение в обычную переменную и благополучно забыл про неё

end

def deposit_operation
  puts 'Ты решил занести денег в наш банк? Отличное решение бро. Введи сумму:'
  cash_to_deposit = gets.chomp.to_i # В случае если введено не число произойдёт внесение 0 юаней
  @current_balance += cash_to_deposit
  puts "Внесено #{cash_to_deposit} юаней", "Текущий баланс: #{@current_balance} юаней"
end


def whitdraw_operation
  puts 'Ты пришёл снять деньги? Я думал ты мне бро, а оно вон как оказалось. Ну вводи сумму:'
  cash_to_get_for_rat = gets.chomp.to_i # В случае если введено не число произойдёт снятие 0 юаней

  if cash_to_get_for_rat > @current_balance
    puts 'Не жирно ли будет? Столько денег нет на счету'
  else
    @current_balance -= cash_to_get_for_rat
    puts "Снято #{cash_to_get_for_rat} юаней", "Текущий баланс: #{@current_balance} юаней"
    #Здесь теоретически много кода
  end
end


start_cash_machine

loop do
  puts "Введи код операции:
W - Получить деньги
D - Внесение наличных в банкомат
B - Показать баланс
Q - Завершить банковские операции"

  operation = gets.chomp
  if operation == 'D'
    deposit_operation
  elsif operation == 'W'
    whitdraw_operation()
  elsif operation == 'B'
    puts "Твой баланс " + @current_balance.to_s + " юаней"
  elsif operation == 'Q'
    if File.exist?('C:\RubyTests\balance.txt')
      File.delete('C:\RubyTests\balance.txt')
    end
    writer = File.open('C:\RubyTests\balance.txt', "w")
    writer.write @current_balance
    puts "Когда вернёшься учти, что я очень люблю когда ты вносишь деньги и очень расстраиваюсь, когда снимаешь. Пока"
    writer.close
    break
  end
end
## Обработать случай когда файл некорректный