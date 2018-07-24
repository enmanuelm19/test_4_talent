require 'rails_helper'

RSpec.describe Weather, type: :model do
  describe 'Relations' do
    it { should belong_to(:city) } 
  end
end
