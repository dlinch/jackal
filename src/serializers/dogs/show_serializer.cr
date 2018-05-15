class Dogs::ShowSerializer < Lucky::Serializer
  def initialize(@dog : Dog)
  end

  def render
    {name: @dog.name}
  end
end