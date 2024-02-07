# 0.5% for a non-negative balance less than 1000 dollars.
# 1.621% for a positive balance greater than or equal to 1000 dollars and less than 5000 dollars.
# 2.475% for a positive balance greater than or equal to 5000 dollars.
# 3.213% for a negative balance (results in negative interest).

module SavingsAccount
  def self.interest_rate(balance)
    case balance
    when balance < 1000 && balance > 0
      0.5
    when balance >= 1000 && balance < 5000
      1.621
    when balance >= 5000
      2.475
    when balance < 0
      3.213
    end
  end

  def self.annual_balance_update(balance)
    balance += balance * interest_rate(balance)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise 'Please implement the SavingsAccount.years_before_desired_balance method'
  end
end
