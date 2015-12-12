class MeshiyasApiController < ApplicationController
  def pick
    m = Meshiya.opening_list
    @meshiya = m.offset( rand(m.count) ).first
    render json: @meshiya
  end

  def list
    @meshiya = Meshiya.opening_list
    render json: @meshiya
  end
end
