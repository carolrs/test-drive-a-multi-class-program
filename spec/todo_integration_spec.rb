require 'todo_list'
require 'todo'

describe TodoList do
  context "given an added task " do
    it "should return as incomplete" do
      todo = Todo.new("Go for a run")
      todo_list = TodoList.new
      todo_list.add(todo)
      expect(todo_list.incomplete).to eq [todo]
    end

    it "should return the complete tasks" do
      todo = Todo.new("Go for a run")
      todo.mark_done!
      todo_list = TodoList.new
      todo_list.add(todo)
      expect(todo_list.complete).to eq [todo]
    end

    it "should return only complete tasks" do
      todo_1 = Todo.new("Go for a run")
      todo_2 = Todo.new("Buy bread")
      todo_1.mark_done!
      todo_list = TodoList.new
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      expect(todo_list.complete).to eq [todo_1]
    end

    it "should return only incomplete tasks" do
      todo_1 = Todo.new("Go for a run")
      todo_2 = Todo.new("Buy bread")
      todo_1.mark_done!
      todo_list = TodoList.new
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      expect(todo_list.incomplete).to eq [todo_2]
    end
  end

  context "given I given up" do
    it "should return all todos as completed" do
      todo_1 = Todo.new("Go for a run")
      todo_2 = Todo.new("Buy bread")
      todo_list = TodoList.new
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo_1, todo_2]
    end
  end
end