require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'should have a balance of zero by default' do
    expect(account.balance).to eq 0
  end

  it 'should have an empty list of transactions when created' do
    expect(account.transactions).to be_empty
  end

  describe 'making a deposit' do
    it 'should increase balance by amount deposited' do
      deposit_amount = 1000
      account.make_deposit(deposit_amount)
      expect(account.balance).to eq deposit_amount
    end

  end



end
