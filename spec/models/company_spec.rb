require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'Relations' do
    it { should have_many :benefits }
  end

  describe 'validations' do
    it { should validate_inclusion_of(:company_type).in_array(Company::TYPES)}
  end
end

