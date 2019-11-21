class Rebate < ApplicationRecord
    enum status: [:submitted, :processing, :sent]
    
    has_many :user_rebates
    has_many :users, through: :user_rebates
    has_many :product_rebates
    has_many :products, through: :product_rebates
end
