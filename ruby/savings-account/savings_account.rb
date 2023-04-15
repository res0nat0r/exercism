module SavingsAccount
  def self.interest_rate(balance)
    # 0.5% for a non-negative balance less than 1000 dollars.
# 1.621% for a positive balance greater or equal than 1000 dollars and less than 5000 dollars.
# 2.475% for a positive balance greater or equal than 5000 dollars.
    #     3.213% for a negative balance (results in negative interest).

    case balance
    when < 1000
      0.5
    when >= 1000 and < 5000
      1.621
    when > 5000
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    raise 'Please implement the SavingsAccount.annual_balance_update method'
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise 'Please implement the SavingsAccount.years_before_desired_balance method'
  end
end
