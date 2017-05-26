class TodoList

	# attr_accessor :list

	def initialize(array)
		@list = array
	end

	def get_items
		@list
	end

	def add_item(item_name)
		@list << item_name
	end

	def delete_item(item_name)
		@list.delete(item_name)
	end

	def get_item(index)
		@list[index]
	end

end

todolist = TodoList.new(["do the dishes", "mow the lawn"])
# p todolist.get_items
# p todolist.add_item("mop")
# p todolist.delete_item("do the dishes")
p todolist.get_item(0)
# p todolist.get_items
