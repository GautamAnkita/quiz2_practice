class ManagersController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    # before_action :find_product, only: [:show, :edit, :update, :destroy]
    # before_action :authorize_user!, only: [:edit, :update, :destroy]

    def new
        @manager = Manager.new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end



    # private
    # def authorize_user!
    #     unless can?(:manage, @product)
    #       flash[:danger] = "Access Denied"
    #       redirect_to product_path(@product) # Product show page 
    #     end
    # end

end
