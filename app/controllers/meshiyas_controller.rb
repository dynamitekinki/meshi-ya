class MeshiyasController < ApplicationController
  def index
    @meshiyas = Meshiya.opening_list
  end

  def pick
    m = Meshiya.opening_list
    @meshiya = m.offset( rand(m.count) ).first
  end

  def new
    @meshiya = Meshiya.new
  end

  def create
    @meshiya = Meshiya.create params.require(:meshiya).permit(:name, :genre, :dayoff, :open, :close)
    redirect_to "/" , notice: "飯屋を登録しました" 
  end
end
