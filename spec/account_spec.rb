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
      #expect{ account.make_deposit(deposit_amount) }.to change{Counter.count}.by(2)
    end
  end

  describe 'making a withdrawal' do
    before(:each) do
      deposit_amount = 1000
      account.make_deposit(deposit_amount)
    end

    it 'should decrease balance by amount withdrawn' do
      withdrawal_amount = 1000
      account.make_withdrawal(withdrawal_amount)
      expect(account.balance).to eq 0
    end
  end



end
