class HelloController < ApplicationController
  def index
    @hellos = Hello.all
  end
  def show
    @hello = Hello.find params[:id]
  end
end
