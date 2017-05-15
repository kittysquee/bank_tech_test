# Responsible for customers account balance
class Balance

  attr_reader :balance

  MINIMUM_BALANCE = 1

  def initialize
    @balance = 0
  end

  def deposit(money)
    self.balance += money
  end

  def withdraw(money)
    fail 'Insufficient funds' if balance < MINIMUM_BALANCE
    self.balance -= money
  end

  private

  attr_writer :balance

end
