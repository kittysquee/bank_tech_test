require 'balance'

describe Balance do
  describe 'initialization' do
    it 'has a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  it 'adds money to the balance' do
    expect{ subject.deposit 10 }.to change{ subject.balance }.by 10
  end
end
