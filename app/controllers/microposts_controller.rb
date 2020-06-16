class MicropostsController < ApplicationController

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
  end

  def update
  end

  def destory
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end

end
