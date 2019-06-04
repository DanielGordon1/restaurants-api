# jbuilder will allow us to write JSON using Ruby
json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
end
