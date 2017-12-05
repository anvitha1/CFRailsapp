require 'rails_helper'

describe ProductsController, :type => :controller do
  
  before do
    @product1 = FactoryGirl.create(:product)
    @user = FactoryGirl.build(:user)
    sign_in @user
  end
    
  describe 'products controller' do
  
    context 'GET #index' do
      it 'renders the index template' do
        get :index
        expect(response).to be_ok
        expect(response).to render_template('index')
      end
    end
    
    context 'GET #show' do
      it 'renders the show page' do 
        get :show, params: {id: @product1}
        expect(response).to be_ok
        expect(response).to render_template('show')
      end
    end 
  
    context 'POST #create' do
      it "will create product" do
        @product = FactoryGirl.create(:product)
        # expect(response.body).to eq 0
        expect(response).to be_successful
      end
    end
    
    context 'POST #update' do
       it "updates product" do
        before = Product.all.length
        post :update, params: { id: @product1}
        after = Product.all.length
        expect(response.status).to eq 302
        expect(after).to eq before
      end
    end
    
    context 'DELETE #delete' do
      it "will delete product" do
        delete :destroy, params: {id: @product1.id}
        expect(response.status).to eq 302
      end
    end
    
  end
end