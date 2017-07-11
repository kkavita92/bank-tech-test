require 'date'

class Transaction

  attr_reader :balance, :date

  def credit
    @amount if deposit?
  end

  def debit
    @amount unless deposit?
  end

  private

  def initialize(transaction_type, amount, balance, date = Date.today)
    @type = transaction_type
    @amount = format_as_currency(amount)
    @balance = format_as_currency(balance)
    @date = date.strftime("%d/%m/%Y")
  end

  def deposit?
    @type == :deposit
  end

  def format_as_currency(number)
     format('%.2f', number) unless number.nil?
   end

end
