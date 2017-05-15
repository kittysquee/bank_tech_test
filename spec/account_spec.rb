require 'account'

describe Account do

  describe 'initialization' do
    it 'has a minimum balance' do
      expect(subject.balance).to eq Account::MINIMUM_BALANCE
    end
  end

  describe '#deposit' do
    it 'allows balance to be increased' do
      expect(subject.deposit(25)).to eq 25
    end
  end

  describe '#withdraw' do
    it 'allows balance to be decreased' do
      subject.deposit(50)
      expect(subject.withdraw(25)).to eq 25
    end
  end

  

end
