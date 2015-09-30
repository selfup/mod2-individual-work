class CategoriesController < ApplicationController
  before_action :load_category, only: [:show, :edit, :update, :destroy]
  before_action :authorize?, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    if current_user
      @category = Category.new
    else
      render plain: "MUST BE ADMIN STINNETTE"
    end
  end

  def create
    @category = Category.create(category_params)
    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
    @categories = Category.all
  end

  def update
    if @category.update(category_params)
      flash.notice = "Updated Category!"
      redirect_to categories_path
    else
      flash.now[:notice]
      render :edit
    end
  end

  def show

  end

  def destroy
    flash.notice = "YOU DELETED: #{@category.ideas.count} IDEAS!"
    ideas = @category.ideas
    ideas.each do |idea|
      idea.delete
    end
    @category.delete
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :category_id)
  end

  def load_category
    @category = Category.find(params[:id])
  end

  def authorize?
    if !current_user.admin?
      render plain: "GO AWAY HACKER STINNETTE"
    end
  end
end
