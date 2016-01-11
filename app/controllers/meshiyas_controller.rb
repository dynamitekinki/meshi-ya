class MeshiyasController < ApplicationController
  # Root
  def opening
    @meshiyas = Meshiya.opening_list
  end

  def index
    @meshiyas = Meshiya.all
  end

  def show
    @meshiya = Meshiya.find(params[:id])
  end

  def edit
    @meshiya = Meshiya.find(params[:id])
  end

  def pick
    m = Meshiya.opening_list
    @meshiya = m.offset( rand(m.count) ).first
  end

  def new
    @meshiya = Meshiya.new
  end

  def create
    @meshiya = Meshiya.new meshiya_params
    if @meshiya.save
      redirect_to root_path , notice: "飯屋を登録しました" 
    else
      render "new"
    end
  end

  def update
    @meshiya = Meshiya.find(params[:id])
    if @meshiya.update meshiya_params
      redirect_to root_path , notice: "飯屋を登録しました" 
    else
      render "edit"
    end
  end

  private

  def meshiya_params
    params.require(:meshiya).permit(:name, :genre, :dayoff, :open, :close)
  end
end
