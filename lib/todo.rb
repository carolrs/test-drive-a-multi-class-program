class Todo
  def initialize(task) # task is a string
     fail "Invalid task" if task.nil? || task.empty?
     @todo_task = task
     @is_done = false
  end

  def task

     @todo_task
  end

  def mark_done! 
     @is_done = true
    # Marks the todo as done
    # Returns nothing
  end

  def done?
     @is_done
    # Returns true if the task is done
    # Otherwise, false
  end
end