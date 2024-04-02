class Product < ApplicationRecord
  has_many_attached :images do |attachable| # A variant is a specific version or transformation of the original attachment.
    attachable.variant :thumb, resize_to_limit: [50, 50]
  end
  belongs_to :category
  has_many :stocks
  has_many :order_products
end
