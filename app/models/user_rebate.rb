class UserRebate < ApplicationRecord
  belongs_to :user
  belongs_to :rebate
end
