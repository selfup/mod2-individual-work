class IdeasController < ApplicationController
  before_action :load_idea, only: [:show, :edit, :update, :destroy]
  before_action :authorize?, only: [:show, :edit, :update, :destroy]

  def new
    if current_user
      @idea = Idea.new(user_id: current_user.id)
      @categories = Category.all
    else
      render plain: "MUST BE LOGGED IN STINNETTE"
    end
  end

  def create
    @idea = Idea.create(idea_params)
    redirect_to profile_path
  end

  def edit
    @idea = Idea.find(params[:id])
    @categories = Category.all
  end

  def update
    if @idea.update(idea_params)
      flash.notice = "Updated Idea!"
      redirect_to profile_path
    else
      flash.now[:notice]
      render :edit
    end
  end

  def show

  end

  def destroy
    @idea.delete
    flash.notice = "YOU HAVE BEEN TERMINATED. STINNETTE"
    redirect_to profile_path
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description, :user_id, :category_id)
  end

  def load_idea
    @idea = Idea.find(params[:id])
  end

  def authorize?
    if @idea.user != current_user
      render plain: "GO AWAY HACKER STINNETTE"
    end
  end
end
