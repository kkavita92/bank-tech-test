require_relative './transaction'

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def make_deposit(amount)
    @balance += amount
    save_transaction(amount)
  end

  def make_withdrawal(amount)
    @balance -= amount
    save_transaction(-amount)
  end

  private

  def save_transaction(amount)
    new_transaction = Transaction.new(amount)
    update_statement(new_transaction)
  end

  def update_statement(transaction)
    @transactions << transaction
  end



end
