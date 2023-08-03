require_relative 'BankAccount'
require_relative 'console_helper'
require_relative 'customer'

class ATM
  def initialize
    @customer = Customer.new
    @account = BankAccount.new(@customer)
  end

  def run
    loop do
      Console_Helper.commands_list
      input = gets.chomp.downcase

      case input
      when 'w'
        Console_Helper.get_sum_to_withdraw
        amount = gets.chomp.to_i
        @account.withdraw(amount)
        Console_Helper.get_balance(@account.balance)
      when 'd'
        Console_Helper.get_sum_to_deposit
        amount = gets.chomp.to_i
        @account.deposit(amount)
        Console_Helper.get_balance(@account.balance)
      when 'b'
        Console_Helper.get_balance(@account.balance)
      when 'q'
        Console_Helper.say_goodbuy
        @customer.end_operation(@account.balance)
        break
      else
        Console_Helper.wrong_command
      end
    end
  end
end

atm = ATM.new
atm.run