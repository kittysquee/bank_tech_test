require 'account'

describe Account do

  describe '#deposit' do
    it 'allows record of deposit' do
      expect(subject.deposit(25)).to eq [25]
    end
    it 'has an empty deposit history' do
      expect(subject.deposits).to eq []
    end
  end

  describe '#withdraw' do
    it 'allows record of withdrawal' do
      expect(subject.withdraw(25)).to eq [25]
    end
    it 'has an empty withdrawal history' do
      expect(subject.withdrawals).to eq []
    end
  end
end
