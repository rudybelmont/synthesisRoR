class ItemsMaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]
  skip_before_filter  :verify_authenticity_token

  # GET /items_materials
  # GET /items_materials.json
  def index
    @items_materials = ItemMaterial.all
  end

end
