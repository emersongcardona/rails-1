class SearchController < ApplicationController
  def create
    palabra = params[:keyword]
    @drivers = Driver.where("id = ?", palabra)
    # respond_to |format|
    #   format.html {redirect_to root_path}
    #   format.json { render json: @drives}
    #   format.js
    # end
  end
end
