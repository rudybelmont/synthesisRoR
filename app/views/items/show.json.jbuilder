json.item @item, :id, :name, :rank, :description, :status, :created_at, :updated_at, :picture

json.materials(@materialList) do |material|
  json.material material, :name, :unit, :quantity
end

