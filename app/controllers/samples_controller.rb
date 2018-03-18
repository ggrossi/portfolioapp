class SamplesController < ApplicationController
  before_action :set_sample, only: [:show, :edit, :update, :destroy]
  
  def new
    @sample = Sample.new
  end
  
  def create
    @sample = Sample.new(sample_params)
    if @sample.save
      flash[:notice] = "Conteúdo criado com sucesso!"
     redirect_to sample_path(@sample)
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
      if @sample.update(sample_params)
        flash[:notice] = "Conteúdo atualizado!"
        redirect_to sample_path(@sample)
      else
        render 'edit'
      end
  end
  
  def index
    @samples = Sample.all
  end
  
  def destroy
    @sample.destroy
    flash[:notice] = "Conteúdo deletado com sucesso!"
    redirect_to samples_path
  end
  
  private
  
    def set_sample
      @sample = Sample.find(params[:id])
    end
  
    def sample_params
      params.require(:sample).permit(:content_url, :image_url, :headline, :description, :medium, :date)
    end
  
end