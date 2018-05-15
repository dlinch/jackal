class Dogs::IndexSerializer < Lucky::Serializer
  def initialize(@dogs : DogQuery, @total : Int64)
  end

  def render
    {
      dogs: @dogs.map { |dog| ShowSerializer.new(dog) },
      total: @total
    }
  end
end