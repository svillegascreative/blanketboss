class BlanketsController < ApplicationController

  def index
    @blankets = Blanket.all
  end

end
