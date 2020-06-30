class BukusController < ApplicationController

  def index
    @bukus = Buku.all
  end

  def show
    @buku = Buku.find(params[:id])
  end

  def new
    @buku = Buku.new
  end

  def create
    @buku = Buku.new(buku_params)

    if @buku.save
      redirect_to bukus_path
    else
      render 'new'
    end

  end

  def edit
    @buku = Buku.find(params[:id])
  end

  def update
    @buku = Buku.find(params[:id])

    if @buku.update(buku_params)
      redirect_to bukus_path
    else
      render 'edit'
    end

  end

  def destroy
    @buku = Buku.find(params[:id])
    @buku.destroy
    redirect_to bukus_path
  end

  private
    def buku_params
      params.require(:buku).permit(:idBuku, :judulBuku, :namaPengarang, :penerbit, :tahunTerbit)
    end

end