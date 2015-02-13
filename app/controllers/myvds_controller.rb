class MyvdsController < ApplicationController

  def index
    @myvd = Myvd.all
    @myvd = Myvd.new
  end

  def new
    @myvd = Myvd.new
  end

  def create
    @myvd = Myvd.new(myvd_params)
    if @myvd.save
      redirect_to myvds_path
    else
      render :index
    end
  end

  private

  def myvd_params
    params.require(:myvd).permit(:name, :message, :looking_for)
  end

end
