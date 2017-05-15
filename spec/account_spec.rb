require 'account'
require 'timecop'

describe Account do

  describe '#deposit' do
    it 'allows record of deposit' do
      expect(subject.deposit(25)).to eq [25]
    end

    it 'allows multiple deposits' do
      subject.deposit(25)
      expect(subject.deposit(25)).to eq [25, 25]
    end

    it 'has an empty deposit history' do
      expect(subject.deposits).to eq []
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

  describe '#total_deposited' do
    it 'will return total deposited' do
      subject.deposit(15)
      subject.deposit(15)
      expect(subject.total_deposited).to eq 30
    end
  end

  describe '#total_withdrawn' do
    it 'will return total withdrawn' do
      subject.withdraw(15)
      subject.withdraw(15)
      expect(subject.total_withdrawn).to eq 30
    end
  end

end
