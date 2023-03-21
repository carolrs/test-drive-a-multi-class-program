require 'todo'

describe Todo do
  context "given an added task " do
    it "should return not done" do
      todo_task = Todo.new("Go for a run")
      expect(todo_task.done?).to eq false
    end
  end

  #   it "should return the content of the task" do 
  #     todo_task = Todo.new("Go for a run")
  #     expect(todo_task.task).to eq "Go for a run"

  #   end

  #   it "raise a error when the content is nil" do 
  #     expect { Todo.new(nil) }.to raise_error "Invalid task" 
  #   end

  #   it "raise a error when the content is empty" do 
  #     expect { Todo.new("") }.to raise_error "Invalid task" 
  #   end
  # end 

  # context "given a done task " do
  #   it "should return true" do
  #     todo_task = Todo.new("Go for a run")
  #     todo_task.mark_done!
  #     expect(todo_task.done?).to eq true
  #   end
  # end
end