class User < ApplicationRecord
  has_many :postulations
  
  def self.with_short_benefits
    joins(postulations: [benefit: :company])
      .where('benefits.amount < ?', 10_000_000)
      .where('companies.company_type = ?', "private")
  end
end

