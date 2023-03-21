class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo)
    @todo_list << todo 
    # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    @todo_list.select {|todo| !todo.done? }
    # Returns all non-done todos
  end

  def complete
    @todo_list.select {|todo| todo.done? }
    # Returns all complete todos
  end

  def give_up!
    @todo_list.each do |todo|
      todo.mark_done!
    end
    # Marks all todos as complete
  end
end