require 'rails_helper'

RSpec.describe Postulation, type: :model do
  describe 'Relations' do
    it { should belong_to :user }
    it { should belong_to :benefit }
  end
end

