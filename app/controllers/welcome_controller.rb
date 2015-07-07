class WelcomeController < ApplicationController
  def index
  	@words = Word.all
  end

  def timeline
  end
end
