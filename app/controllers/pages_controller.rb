class PagesController < ApplicationController
  
  before_filter :authenticate_user!
  
  def home
    @clients = Client.find(:all, :order => "created_at DESC")
  end
end
