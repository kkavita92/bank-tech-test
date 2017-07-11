class Statement

  def print(transactions_log)
    puts STATEMENT_HEADER
    transactions_log.reverse.each do |transaction|
      add_transaction_to_statement(transaction)
    end
  end

  private

  STATEMENT_HEADER = 'date || credit || debit || balance'

  def initialize
  end

  def add_transaction_to_statement(transaction)
    puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
  end


end
