# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |x|
  Post.create(title: "Blog Title ##{x}", body: "Blog Body ##{x}")
  3.times do |y|
    Comment.create(title: "comment title #{y}", body: "comment body #{y}", post_id: x)
  end
end
