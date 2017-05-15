# Responsible for looking after the records of actions on account
class Account


  attr_reader :deposits, :withdrawals

  def initialize
    @deposits = []
    @withdrawals = []
  end

  def deposit(money)
    deposits << money
  end

  def withdraw(money)
    withdrawals << money
  end
end
