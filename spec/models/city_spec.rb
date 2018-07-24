require 'rails_helper'

RSpec.describe City, type: :model do
  describe 'Relations' do
    it { should have_many(:weathers) } 
  end
end
