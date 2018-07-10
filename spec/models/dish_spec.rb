require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :description }
  end
end


