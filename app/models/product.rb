class Product < ApplicationRecord
    has_many :product_rebates
    has_many :rebates, through: :product_rebates
end
