require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Relations' do
    it { should have_many :postulations }
  end
end

