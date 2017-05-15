require 'account'

describe Account do

  describe '#deposit' do
    it 'allows record of deposit' do
      expect(subject.deposit(25)).to eq [25]
    end
  end

  describe '#withdraw' do
    it 'allows record of withdrawal' do
      expect(subject.withdraw(25)).to eq [25]
    end
    xit 'raises an error if customer tries to overdraw' do
      expect(subject.withdraw(1)).to raise_error("Insufficient funds")
    end
  end



end
