json.array!(@materials) do |material|
  json.extract! material, :id, :name, :unit, :quantity
  json.url material_url(material, format: :json)
end
