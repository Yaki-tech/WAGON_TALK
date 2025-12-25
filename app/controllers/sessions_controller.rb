class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :next, :previous, :shuffle]

  def create
    deck = Deck.find(params[:deck_id])
    session = deck.sessions.create!

    redirect_to session_path(session.session_token)
  end

  def show
    @question = @session.current_question
    @deck = @session.deck
    @is_favorited = Favorite.exists?(question_id: @question&.id, user_identifier: current_user_identifier)
  end

  def next
    @session.next_question!
    redirect_to session_path(@session.session_token)
  end

  def previous
    @session.previous_question!
    redirect_to session_path(@session.session_token)
  end

  def shuffle
    @session.shuffle!
    redirect_to session_path(@session.session_token), notice: "Questions mélangées !"
  end

  private

  def set_session
    @session = Session.find_by!(session_token: params[:token])
  end
end
