class SkipsController < ApplicationController
  def new
    @skip = Skip.new
  end

  def create
    @skip = Skip.new(skip_palams)
    if @skip.save
      redirect_to skips_path
    else
    render new
    end
  end

  def index
    @skips = Skip.all
  end

  def show
    @skip = Skip.find(params[:id])
  end

  def edit
    @skip = Skip.find(params[:id])
  end

  def update
    @skip = Skip.find(params[:id])
    if @skip.update(skip_palams)
      redirect_to skip_path(@skip.id)
    else
      render edit
    end
  end

  def destroy
    @skip = Skip.find(params[:id])
    @skip.destroy
    redirect_to skips_path
  end

  private
  def  skip_palams
  params.require(:skip).permit(:name, :number)
  end
end
