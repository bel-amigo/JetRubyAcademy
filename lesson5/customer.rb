class Customer
  attr_reader :bank_account
  def initialize
    reader = File.open('C:\RubyTests\balance.txt', "r")
    @bank_account = reader.read.to_f
    reader.close
  end
  def end_operation(balance)
    writer = File.open('C:\RubyTests\balance.txt', "w")
    writer.write(balance)
    writer.close
  end
end