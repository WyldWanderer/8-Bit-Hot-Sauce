class PagesController < ApplicationController
  def home
    
  end

  def sauces
    @sauces = Sauce.all
  end
  
  def leave_a_tip
  end

  def next_batch
  end

  def error
  end
end
