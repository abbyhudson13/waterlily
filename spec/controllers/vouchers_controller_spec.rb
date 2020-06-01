require 'rails_helper'

RSpec.describe VouchersController, type: :controller do

  describe 'before actions' do
    describe 'set_voucher' do
      it 'is expected to define before action' do
        is_expected.to use_before_action(:set_voucher)
      end
    end
  end

  describe 'GET #new' do
    before do
      get :new
    end

    it 'is expected to assign user as new instance variable' do
      expect(assigns[:voucher]).to be_instance_of(Voucher)
    end

    it 'renders new template' do
      is_expected.to render_template(:new)
    end

    it 'renders application layout' do
      is_expected.to render_template(:application)
    end
  end

end
