class GoodsController < ApplicationController
	before_action :set_good, only: [:show, :edit, :update, :destroy]


  def index
    @goods = Good.all
  end

  def new
    if Good.count <= 10
    @good = Good.new
    else
      flash[:error] = "Se alcanzó el número máximo de bienes permitido"
      redirect_to goods_url
    end
  end

  def show
  end

  def edit
  end

  def create
    
    @good = Good.new(good_params)
    if @good.save
      flash[:success] = 'Bien fue creado correctamente'
      redirect_to goods_url
    else
      flash[:error] = "Bien no pudo ser creado correctamente"
      render :new
    end
  end

  def update
    if @good.update(good_params)
      @good.update(:last_modification_date => Time.now.to_s)
      flash[:success] = 'El precio fue actualizado exitosamente'
      redirect_to good_path(@good)
    else
      flash[:error] = "Bien no pudo ser actualizado correctamente"
      render :edit
    end
  end

  def destroy
    if @good.destroy
      flash[:success] = 'Bien fue eliminado exitosamente'
      redirect_to root_path
    else
      flash[:error] = "Bien no pudo ser borrado correctamente"
      render :index
    end
  end

  private

  def set_good
    @good = Good.find(params[:id])
  end

  def good_params
    params.require(:good).permit(:name,
    	:description,
      :type_good,
    	:initial_value,
    	:current_value,
    	:purchase_date,
    	:last_modification_date)
  end
end
