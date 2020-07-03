class MicropostsController < ApplicationController
  before_action :sign_in_required, only: %i[new create edit update destroy]

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
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      redirect_to microposts_url, notice: "ポストしました"
    else
      flash[:alert] = if @micropost.content.empty?
        'ポスト内容を入力してください'
      elsif @micropost.content.length > 140
        'ポスト内容は140字以内で入力してください'
      else
        'ポストできませんでした'
      end
      redirect_to new_micropost_path(id: @micropost.id)
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
