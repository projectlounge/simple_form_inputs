class HomeController < ApplicationController

  def index
    @object = Ball.all.first || Ball.new
  end

end
