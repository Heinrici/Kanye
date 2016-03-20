class PagesController < ApplicationController 
  #back end for pages/index
  def index
  end
  #back end for pages/home
  def home
    @posts = Post.all
  end
  #back end for pages/profile
  def profile
    #grab username from id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not found!"
    end
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newPost = Post.new
  end
  #back end for pages/explore
  def explore
    @posts = Post.all
    @newPost = Post.new
  end
  def postform
    @newPost = Post.new
  end
end
