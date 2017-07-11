require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:credit_transaction) { double :transaction }


  it 'should have a balance of zero by default' do
    expect(account.balance).to eq 0
  end

  describe 'making a deposit' do
    before(:each) do
      account.make_deposit(1000)
    end

    it 'should increase balance by amount deposited' do
      expect(account.balance).to eq 1000
    end

    it 'handles floats as deposits' do
      account.make_deposit(99.45)
      expect(account.balance).to eq 1099.45
    end
  end

  describe 'making a withdrawal' do
    before(:each) do
      account.make_withdrawal(1000)
    end

    it 'should decrease balance by amount withdrawn' do
      expect(account.balance).to eq -1000
    end

    it 'handles floats as withdrawals' do
      account.make_withdrawal(99.45)
      expect(account.balance).to eq -1099.45
    end
  end
end
