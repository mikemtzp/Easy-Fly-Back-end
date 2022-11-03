class Api::V1::AuthsController < ApplicationController
  def show
    if logged_in?
      render json: current_user
    else
      render json: { error: 'User is not logged in/could not be found.' }
    end
  end
end
