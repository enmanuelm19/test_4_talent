class Company < ApplicationRecord
  TYPES = ["private", "public"]
  has_many :benefits
  validates :company_type, inclusion: { in: TYPES }
end

