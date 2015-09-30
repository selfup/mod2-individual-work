class ImagesController < ApplicationController
  before_action :load_image, only: [:show, :edit, :update, :destroy]
  before_action :authorize?, only: [:show, :edit, :update, :destroy]

  def index
    @images = Image.all
  end

  def new
    if current_user
      @image = Image.new
    else
      render plain: "MUST BE ADMIN STINNETTE"
    end
  end

  def create
    @image = Image.create(image_params)
    redirect_to images_path
  end

  def edit
    @image = Image.find(params[:id])
    @images = Image.all
  end

  def update
    if @image.update(image_params)
      flash.notice = "Updated Image!"
      redirect_to images_path
    else
      flash.now[:notice]
      render :edit
    end
  end

  def show

  end

  def destroy
    @image.delete
    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit(:address, :image_id)
  end

  def load_image
    @image = Image.find(params[:id])
  end

  def authorize?
    if !current_user.admin?
      render plain: "GO AWAY HACKER STINNETTE"
    end
  end
end
