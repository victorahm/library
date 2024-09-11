require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:author) }
    it { should validate_numericality_of(:year).only_integer.allow_nil }
    it { should validate_presence_of(:isbn) }
  end
end
