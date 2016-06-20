module ItemsHelper

  def get_all_modif(item_list)
    #item_list = Item.all
    material_list = Material.all
    item_material_list = ItemMaterial.all

    item_list.each do |item_one|
      @item_material_raw = item_material_list.where(item_id: item_one.id).all

      @item_material_raw.each do |raw_item|
        @real_qty = material_list.where(id: raw_item.material_id).first.quantity

        if !(@real_qty >= raw_item.quantity)
          item_one.status = false
          break;
        else
          item_one.status = true
        end
      end

      item_list.where(id: item_one.id).first.update(status: item_one.status)
    end
  end

end
