class MeshiyasController < ApplicationController
  def opening
    @meshiyas = Meshiya.opening_list
  end

  def index
    @meshiyas = Meshiya.all
  end

  def pick
    m = Meshiya.opening_list
    @meshiya = m.offset( rand(m.count) ).first
  end

  def new
    @meshiya = Meshiya.new
  end

  def create
    @meshiya = Meshiya.create meshiya_params
    redirect_to "/" , notice: "飯屋を登録しました" 
  end

  private

  def meshiya_params
    params.require(:meshiya).permit(:name, :genre, :dayoff, :open, :close)
  end
end
