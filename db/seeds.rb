require 'open-uri'
require 'json'

source = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
datas = JSON.parse(source)

Ingredient.destroy_all

# i = Ingredient.new(name: datas['drinks'][1]['strIngredient1']).save!

# p i

10.times do
  i = Ingredient.new(
    name: datas['drinks'][rand(datas['drinks'].length)]['strIngredient1']
  )
  i.save!
end
