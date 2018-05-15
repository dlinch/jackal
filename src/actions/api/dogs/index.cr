class Api::Dogs::Index < ApiAction
  action do
    dogs = DogQuery.new
    total = DogQuery.new.count
    json Dogs::IndexSerializer.new(dogs, total)
  end
end