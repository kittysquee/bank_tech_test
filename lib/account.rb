# Responsible for looking after the records of actions on account
class Account
  require 'time'

  attr_reader :deposits, :withdrawals

  def initialize
    @deposits = []
    @withdrawals = []
  end

  def deposit(money)
    deposits << {date: Time.now.strftime("%d/%m/%Y"), deposit: money}
  end

  def withdraw(money)
    withdrawals << {date: Time.now.strftime("%d/%m/%Y"), withdrawal: money}
  end

  def account_overview
    deposits + withdrawals
  end
end
