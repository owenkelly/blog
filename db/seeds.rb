words = %w(Lorem ipsum dolor sit amet consectetur adipiscing elit 
	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua
	Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi
	ut aliquip ex ea commodo consequat
	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
	dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non 
	proident sunt in culpa qui officia deserunt mollit anim id est laborum)


10.times do
	a = Post.create(title: words.sample(3).join(" "), content: words.sample(30).join(" "))
end
