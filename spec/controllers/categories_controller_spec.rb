require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  let!(:category) { FactoryBot.create(:category)}

  describe 'GET #show' do
    it "is successful" do
      get(:show, params: { name: category.name })
      expect(response).to be_successful
    end
  end

end
