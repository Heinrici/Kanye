class PagesController < ApplicationController
  #back end for pages/index
  def index
  end
  #back end for pages/home
  def home
  end
  #back end for pages/profile
  def profile
    #grab username from id
    @username = params[:id]
  end
  #back end for pages/explore
  def explore
  end
end
