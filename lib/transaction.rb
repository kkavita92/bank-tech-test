require 'date'

class Transaction

  def initialize(transaction_type, amount, balance, date = Date.today)
    @transaction_type = transaction_type
    @amount = amount
    @balance = balance
    @date = date
  end

end
