class SharesController < ApplicationController
  before_action -> {
    sleep(0.5)
  }

  def index
    shares = Share.where(id: params[:ids].to_s.split(','))
    render json: shares
  end

  def show
    render json: Share.find_by(id: params[:id])
  end
end