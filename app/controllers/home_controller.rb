class HomeController < ApplicationController

def index
  @users = User.all
  if params[:upvote]
    @user = User.find(params[:upvote])
    @user.liked_by current_user
  end
end

def new

end

def create

end

def show

end

end
