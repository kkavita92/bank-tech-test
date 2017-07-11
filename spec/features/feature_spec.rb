require '././lib/account'

account = Account.new
account.make_deposit(1000)
account.make_withdrawal(500.50)
account.get_statement
