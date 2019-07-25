# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.delete_all
User.delete_all
Category.delete_all
PostCategory.delete_all
Comment.delete_all

p1 = Post.create(title: "post1", content: "very important content of post1")
p2 = Post.create(title: "post2", content: "very important content of post2")
p3 = Post.create(title: "post3", content: "super goofy content of post3")


c1 = Category.create(name: "Important")
c2 = Category.create(name: "Goofy")

PostCategory.create(post_id: p1.id, category_id: c1.id)
PostCategory.create(post_id: p2.id, category_id: c1.id)
PostCategory.create(post_id: p3.id, category_id: c2.id)

u1 = User.create(username: "Varya", email: "vv@gmail.com")
u2 = User.create(username: "Dina", email: "dina@gmail.com")

co1 = Comment.create(content: "The best post I ve ever read!", user_id:u1.id, post_id:p1.id)
co4 = Comment.create(content: "Seriously...", user_id:u1.id, post_id:p1.id)

co2 = Comment.create(content: "Are you kidding me!", user_id:u2.id, post_id:p1.id)
co3 = Comment.create(content: "Fisrt comment!", user_id:u1.id, post_id:p2.id)