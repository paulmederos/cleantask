class PagesController < ApplicationController
  def home
    @clients = Client.find(:all, :order => "created_at DESC")
  end
end
