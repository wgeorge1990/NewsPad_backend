# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

blair = User.create(first_name: 'Blair', last_name: 'Carroll', user_name: 'bcarrol2', password: 'cookies1')
will = User.create(first_name: 'Will', last_name: 'George', user_name: 'willfarrell2', password: 'cookies1')

fav1 = Favorite.create(title: 'New tesla', user_id: 1)
fav2 = Favorite.create(title: 'Semantic stuff', user_id: 2)

cmmt1 = Comment.create(comment: 'Im loving this new car for only $35,000', user_id: 1, favorite_id: 1)
cmmt3 = Comment.create(comment: 'Tesla stock is going down', user_id: 1, favorite_id: 1)
cmmt2 = Comment.create(comment: 'Im loving this semantic ui', user_id: 2, favorite_id: 2)
