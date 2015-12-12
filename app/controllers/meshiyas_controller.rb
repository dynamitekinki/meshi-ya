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

  def create meshiya
    Meshiya.create meshiya
  end
end
