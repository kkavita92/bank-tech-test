require '././lib/account'

def test_standard_account_activity
  account = Account.new
  account.make_deposit(1000)
  account.make_withdrawal(500.50)
  account.get_statement
end

test_standard_account_activity
