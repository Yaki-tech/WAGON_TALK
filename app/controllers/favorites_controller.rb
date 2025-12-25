class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.for_user(current_user_identifier).includes(:question)
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user_identifier = current_user_identifier

    if @favorite.save
      respond_to do |format|
        format.html { redirect_back fallback_location: favorites_path, notice: "Ajouté aux favoris" }
        format.turbo_stream
      end
    else
      redirect_back fallback_location: favorites_path, alert: "Déjà dans les favoris"
    end
  end

  def destroy
    @favorite = Favorite.for_user(current_user_identifier).find(params[:id])
    @question = @favorite.question
    @favorite.destroy

    respond_to do |format|
      format.html { redirect_back fallback_location: favorites_path, notice: "Retiré des favoris" }
      format.turbo_stream
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:question_id)
  end
end
