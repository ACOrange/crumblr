# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.new
post1.title = "My first post"
post1.kind = "text"
post1.content = <<CONTENT
Blondies are often called brownies without chocolate which I find silly; blondies are a dessert with their own unique deliciousness and personality. Whereas brownies depend on chocolate for their flavor, for blondies it’s all about the brown sugar, giving the blondies their distinctive molasses flavor. Chewy, rich, and flavorful blondies, when made right, are an indulgent dessert that are hard to resist.

This is my “go-to” dessert recipe since it only takes about 5 minutes to make and then throw in the oven. I can’t count how many times I dashed this together so that last second company could arrive to a freshly baked treat. Plus, it only makes a small batch, so you don’t have to worry about being tempted by dozens of tasty treats lying in wait for you.

Since brown sugar is the critical flavor here, I suggest using dark brown sugar. While butterscotch chips or walnuts are commonly mixed in, chocolate chips are equally good. And of course, blondies should always be served with a glass of milk.
CONTENT

post1.save

2.times do
	post1.hearts.create
end

post2 = Post.new(title: "Another post", kind: "image")
post2.content = "http://i1.nyt.com/images/2014/03/15/world/15diplo2/15diplo2-largeHorizontal375.jpg"
post2.save

post3 = Post.create {
	title: "yet another post",
	kind: "text",
	content: "here we go again..."
	}

3.times {
	post3.hearts.create
}

post4 = Post.create {
	title: "Image post",
	kind: "image",
	content: "http://graphics8.nytimes.com/images/blogs_v5/minute/minute_main.png"
	}

 2.times {
	post4.hearts.create
}