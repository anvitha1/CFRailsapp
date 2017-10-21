class OrdersController < ApplicationController
    before_action :authenticate_user!
	load_and_authorize_resource #Helper method -check's user's abilities to make sure they are authorized to perform the action
    
    def index
    end

    def show
    end
    
    def new
    end

    def create
    end
    
    def destroy
    end
end
