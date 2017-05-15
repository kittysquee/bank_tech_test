require 'account'
require 'timecop'
require 'time'

describe Account do

  describe '#deposit' do
    before do
      Timecop.freeze(Time.new(2017, 05, 15, 13, 0 ,0))
    end
    it 'allows record of deposit' do
      expect(subject.deposit(25)).to eq [{date: "15/05/2017", deposit: 25}]
    end

    it 'allows multiple deposits' do
      subject.deposit(25)
      expect(subject.deposit(25)).to eq [{date: "15/05/2017", deposit: 25}, {date: "15/05/2017", deposit: 25}]
    end


    it 'has an empty deposit history' do
      expect(subject.deposits).to eq []
    end

    it 'allows a date to be passed with deposit' do
      subject.deposit(100)
      expect(subject.deposits).to eq [{date: "15/05/2017", deposit: 100}]
    end
  end

  describe '#withdraw' do
    it 'allows record of withdrawal' do
      expect(subject.withdraw(25)).to eq [25]
    end

    it 'allows multiple withdrawals' do
      subject.withdraw(25)
      expect(subject.withdraw(25)).to eq [25, 25]
    end

    it 'has an empty withdrawal history' do
      expect(subject.withdrawals).to eq []
    end
  end
  # 
  # describe '#total_deposited' do
  #   it 'will return total deposited' do
  #     subject.deposit(15)
  #     subject.deposit(15)
  #     expect(subject.total_deposited).to eq 30
  #   end
  # end
  #
  # describe '#total_withdrawn' do
  #   it 'will return total withdrawn' do
  #     subject.withdraw(15)
  #     subject.withdraw(15)
  #     expect(subject.total_withdrawn).to eq 30
  #   end
  # end
end
