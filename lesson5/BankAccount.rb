require_relative 'console_helper'
require_relative 'customer'


class BankAccount
  attr_reader :balance
  def initialize(customer)
    @balance = customer.bank_account
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount > @balance
      Console_Helper.not_enough_money
    else
      @balance -= amount
    end
  end


end

