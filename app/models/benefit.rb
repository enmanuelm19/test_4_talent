class Benefit < ApplicationRecord
  has_many :postulations
  belongs_to :company
end
