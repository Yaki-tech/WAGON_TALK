class DecksController < ApplicationController
  def index
    @decks = Deck.all.includes(:questions)
  end

  def show
    @deck = Deck.find(params[:id])
  end
end
