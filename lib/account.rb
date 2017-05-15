class Account

  MINIMUM_BALANCE = 0

  attr_reader :balance

  def initialize(balance = MINIMUM_BALANCE)
    @balance = 0
  end

  def deposit(money)
    money += balance
  end

  def withdraw(money)
    money -= balance
  end

end
