# Constructing the json objects for products being called through products#index
json.products do
  json.array! @products do |product|
    json.partial! "products/product", product: product
  end
end
