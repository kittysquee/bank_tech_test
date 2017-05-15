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
      expect(subject.withdraw(25)).to eq [{date: "15/05/2017", withdrawal: 25}]
    end

    it 'allows multiple withdrawals' do
      subject.withdraw(25)
      expect(subject.withdraw(25)).to eq [{date: "15/05/2017", withdrawal: 25}, {date: "15/05/2017", withdrawal: 25}]
    end

    it 'has an empty withdrawal history' do
      expect(subject.withdrawals).to eq []
    end


    it 'allows a date to be passed with deposit' do
      subject.withdraw(100)
      expect(subject.withdrawals).to eq [{date: "15/05/2017", withdrawal: 100}]
    end

    describe '#account_overview' do
      it 'allows a customer to see an overview of their account' do
        subject.deposit(100)
        subject.withdraw(25)
        expect(subject.account_overview).to eq [{date: "15/05/2017", deposit: 100},{date: "15/05/2017", withdrawal: 25}]
      end
    end
  end
end
