class Api::V1::MarkersController < ApplicationController
  def index
    if params[:category_id].present?
      @markers = Marker.where(category_id: params[:category_id])
    else
      @markers = Marker.all.order(:id)
    end
    render json: @markers
  end
end
