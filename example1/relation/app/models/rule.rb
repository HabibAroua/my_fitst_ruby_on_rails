class Rule < ApplicationRecord
	has_many :user_rules
  has_many :users, through: :user_rules
end
