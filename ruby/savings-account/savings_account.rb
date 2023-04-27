# frozen_string_literal: true

module SavingsAccount
  def self.interest_rate(balance)
    if balance.positive? && balance < 1000
      (0.5 / 100)
    elsif balance >= 1000 && balance < 5000
      (1.621 / 100)
    elsif balance >= 5000
      (2.475 / 100)
    else
      (3.213 / 100)
    end
  end

  def self.annual_balance_update(balance)
    balance + (balance * interest_rate(balance))
  end

  def self.years_before_desired_balance(current_balance, desired_balance); end
end
