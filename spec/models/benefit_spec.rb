require 'rails_helper'

RSpec.describe Benefit, type: :model do
  describe 'Relations' do
    it { should have_many :postulations }
    it { should belong_to :company }
  end
end

