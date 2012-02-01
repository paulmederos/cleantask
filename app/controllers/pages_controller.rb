class PagesController < ApplicationController
  
  def home
    @clients = Client.find(:all, :order => "created_at DESC")
    @facilities = Facility.find(:all, :order => "name ASC")
  end
end
