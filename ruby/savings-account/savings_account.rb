module SavingsAccount
  def self.interest_rate(balance)
    case 
    when balance < 1000
      0.5
    when balance >= 1000 && balance < 5000
      1.621
    when balance > 5000
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
