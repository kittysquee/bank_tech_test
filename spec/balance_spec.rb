require 'balance'

describe Balance do
  describe 'initialization' do
    it 'has a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'adds money to the balance' do
      expect{ subject.deposit(10) }.to change{ subject.balance }.by 10
    end
  end

  describe '#withdraw' do
    it 'takes money from the balance' do
      subject.deposit(100)
      expect{ subject.withdraw(25) }.to change{ subject.balance }.by -25
      expect(subject.balance).to eq 75
    end

    it 'raises error if customer tries to overdraw' do
      message = 'Insufficient funds'
      expect{ subject.withdraw(1) }.to raise_error message
    end
  end

end
