class ItemsController < ApplicationController
  include ItemsHelper
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  	skip_before_filter  :verify_authenticity_token

  # GET /items
  # GET /items.json
  def index
    @items = get_all_modif(Item.all)
  end

  # GET /items/1
  # GET /items/1.json
  def show
    item = params[:id] && Item.find_by(id: params[:id])
    if item 
      itemMaterial = ItemMaterial.where(item_id: params[:id])
      @item = item
      @materialList = []
      materials = Material.all

      itemMaterial.each do |item_code|

        @materialList.push(materials.find_by(id: item_code.material_id))
      end

    else
      json_blank(404, 'Item cannot be found.')
    end

  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upload_item_picture
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:name, :rank, :recipe, :status, :picture)
  end
end
