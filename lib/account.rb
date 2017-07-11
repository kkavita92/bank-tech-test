require_relative './transaction'
require_relative './statement'

class TransactionError < StandardError; end

class Account

  attr_reader :balance #remove balance, don't need balance only a starting balance

  def initialize
    @balance = 0 # software won't be as pure with exposed balance
    @transactions = [] # object calisthenics? primitive obsession -> array is suspect, some sort of collection object
    # store as hash instead?
  end

  def make_deposit(amount)
    @balance += amount
    save_transaction(:deposit, amount) #not entirely single responsible, maybe deposit/withdrawal class
  end

  def make_withdrawal(amount)
    @balance -= amount
    save_transaction(:withdrawal, amount)
  end

  def get_statement(statement = Statement.new)
    return statement.print(@transactions)
  end

  private

  def save_transaction(transaction_type, amount)
    new_transaction = Transaction.new(transaction_type, amount, @balance) #dislike: reference to balance is not great
    #transaction doesn't need to know about balance
    update_transactions(new_transaction)
  end

  def update_transactions(transaction)
    @transactions << transaction
  end
end
