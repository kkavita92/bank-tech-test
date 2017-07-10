require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'should have a balance of zero by default' do
    expect(account.balance).to eq 0
  end

  it 'should have an empty list of transactions when created' do
    expect(account.transactions).to be_empty
  end

end
