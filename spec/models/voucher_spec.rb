require 'rails_helper'

RSpec.describe Voucher, type: :model do

  describe 'validations' do
    describe 'it validates treatment' do
      it { is_expected.to validate_presence_of(:treatment_id) }
    end
  end

end
