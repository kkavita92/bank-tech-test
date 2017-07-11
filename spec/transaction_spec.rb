require 'transaction'

describe Transaction do
  subject(:credit_transaction) { described_class.new(:deposit, 1000, 1000) }
  subject(:debit_transaction) { described_class.new(:withdrawal, 1000, 1000) }

  describe 'when transaction type is deposit' do
    it 'credit is equal to deposit amount' do
      expect(credit_transaction.credit).to eq '1000.00'
    end

    it 'debit is equal to nil' do
      expect(credit_transaction.debit).to eq nil
    end
  end

  describe 'when transaction type is withdrawal' do
    it 'credit is equal to nil' do
      expect(debit_transaction.credit).to eq nil
    end

    it 'debit is equal to withdrawal amount' do
      expect(debit_transaction.debit).to eq '1000.00'
    end
  end
end
