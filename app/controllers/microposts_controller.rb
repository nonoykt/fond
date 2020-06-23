class MicropostsController < ApplicationController
  before_action :sign_in_required, only: %i[ new create edit update destroy]

  def index
    @microposts = Micropost.all
  end

  def show
    @micropost = Micropost.find(params[:id])
  end

  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = Micropost.new(micropost_params)
    if @micropost.save
      redirect_to microposts_url, notice: "ポストしました"
    else
      render :new
    end
  end

  def edit
    @micropost = Micropost.find(params[:id])
  end

  def update
    @micropost = Micropost.find(params[:id])
  end

  def destory
    @micropost.delete
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content, :image)
  end

  def set_user
    @micropost = Micropost.find(params[:id])
  end

end
