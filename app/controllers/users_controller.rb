class UsersController < ApplicationController
  before_filter :authenticate_user!
  # before_filter :correct_user, :only => [:edit, :update]

  def index
    @users = User.order("users.created_at DESC")

    respond_to do |format|
      format.html
      format.json {head :ok }
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:id])

    respond_to do |format|
      format.html { redirect_to :users }
      format.json { head :ok }
    end
  end

end
