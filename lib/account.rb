require_relative './transaction'

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def make_deposit(amount)
    @balance += amount
    save_transaction(:credit, amount)
  end

  def make_withdrawal(amount)
    @balance -= amount
    save_transaction(:debit, amount)
  end

  def get_statement()
    statement = Statement.new(@transactions)
    return statement.print
  end

  private

  def save_transaction(transaction_type, amount)
    new_transaction = Transaction.new(transaction_type, amount, @balance)
    update_transactions(new_transaction)
  end

  def update_transactions(transaction)
    @transactions << transaction
  end


end
