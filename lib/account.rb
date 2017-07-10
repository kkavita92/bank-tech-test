class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def make_deposit(deposit_amount)
    @balance += deposit_amount
  end

  def make_withdrawal(withdrawal_amount)
    @balance -= withdrawal_amount
  end
end
