class ItemsController < ApplicationController

before_action :force_login 

  def index
    @items= Item.all
  end

def show

@item= Item.find(params[:id])
#we get teh ID from URL

end



end
