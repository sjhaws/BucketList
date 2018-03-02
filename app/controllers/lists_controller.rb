class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    if @list.update
      redirect_to edit_list_path
    else
      render :edit
    end
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to lists_path(@list)
    else
      render :new
    end
  end

  def new
    @list = List.new
  end

  def destroy
    @list.destroy
  end

  private
    def list_params
      params.require(:list).permit(:name, :image)
    end
end
