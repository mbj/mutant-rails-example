class Item

  attr_reader :id, :name, :description

  def initialize(id:, name:, description:)
    @id, @name, @description = id, name, description
  end

  def to_json
    {
      id:          id,
      name:        name,
      description: description
    }
  end
end
