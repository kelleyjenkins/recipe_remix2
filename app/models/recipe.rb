class Recipe
  attr_reader :name, :Ingredients, :category, :cook_time, :source, :recipe_id

  def initialize(recipe = {})
    @name = recipe[:recipeName]
    @ingredients = recipe[:ingredients]
    @category = recipe[:attributes][:course]
    @cook_time = recipe[:totalTimeInSeconds]
    @source = recipe[:sourceDisplayName]
    @recipe_id = recipe[:id]
  end

end
