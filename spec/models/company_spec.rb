require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'Relations' do
    it { should have_many :benefits }
  end

  describe 'validations' do
  end
end

