require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:credit_transaction) { double :transaction }


  it 'should have a balance of zero by default' do
    expect(account.balance).to eq 0
  end

  it 'should have an empty list of transactions when created' do
    expect(account.transactions).to be_empty
  end

  describe 'making a deposit' do
    before(:each) do
      deposit_amount = 1000
      account.make_deposit(deposit_amount)
    end

    it 'should increase balance by amount deposited' do
      expect(account.balance).to eq 1000
    end

    it 'should add new transaction to transaction list' do
      expect(account.transactions.length).to eq 1
    end
  end

  describe 'making a withdrawal' do
    before(:each) do
      withdrawal_amount = 1000
      account.make_withdrawal(withdrawal_amount)
    end

    it 'should decrease balance by amount withdrawn' do
      expect(account.balance).to eq -1000
    end

    it 'should add new transaction to transaction list' do
      expect(account.transactions.length).to eq 1
    end
  end
end
