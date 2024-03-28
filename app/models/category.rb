class Category < ApplicationRecord
  has_one_attached :image do |attachable|  # A variant is a specific version or transformation of the original attachment.
    attachable.variant :thumb, resize_to_limit: [50, 50]
  end
end