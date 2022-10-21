class Api::V1::JetsController < ApplicationController
  def index
    jets = Jet.includes(:reservations).all.order(:id)
    if jets
      render json: jets
    else
      render json: { error: 'No jets found' }
    end
  end

  def show
    jet = Jet.find_by(id: params[:id])
    if jet
      render json: jet
    else
      render json: { error: 'No jet found' }
    end
  end

  def create
    jet = Jet.new(jet_params)
    if jet.save
      render json: { message: 'Jet created successfully' }
    else
      render json: { error: 'Unable to create jet' }
    end
  end

  def destroy
    jet = Jet.find_by(id: params[:id])
    if jet
      jet.destroy
      render json: { message: 'Jet deleted successfully' }
    else
      render json: { error: 'Unable to delete jet' }
    end
  end

  def update
    jet = Jet.find_by(id: params[:id])
    if jet
      jet.update(jet_params)
      render json: { message: 'Jet updated successfully' }
    else
      render json: { error: 'Unable to update jet' }
    end
  end

  private

  def jet_params
    params.require(:jet).permit(:name, :price_per_day, :description, :size, :category, :finance_fee, :image)
  end
end
