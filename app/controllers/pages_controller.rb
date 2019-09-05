class PagesController < ApplicationController
  def contact
  end

  def presentation
  end

  def index
    @items = Item.all
  end
  
end
