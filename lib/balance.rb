# Responsible for customers account balance
class Balance

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    self.balance += money
  end

  private

  attr_writer :balance

end
