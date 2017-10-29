require 'rails_helper'

describe UsersController, type: :controller do
  
  before do
    @user = User.create!(email: "test@gmail.com", password: "12345678") 
    @user2 = User.create!(email: "test2@gmail.com", password: "45678910") 
  end
  
  describe 'GET #show' do
    context 'when a user is logged in' do
      before do 
        sign_in @user
      end
      
      it 'loads correct user details' do
        get :show, params: { id: @user.id }
        expect(response).to be_ok
        #expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end
    end

    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: { id: @user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
    
  context 'user cannot see other users page' do
      before do
        sign_in @user2
      end
      
      it "redirect to root path" do
        get :show, params: { id: @user2.id }
        expect(response).to redirect_to(root_path)
      end
    end
    
  end
end