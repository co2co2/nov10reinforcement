class TodoList
  def initialize
    @@all_task = []
  end
  def add_task (new_task)
    @@all_task << new_task
  end
  def display
    @@all_task.each do |t|
      puts "#{t.description},#{t.due_date}"
    end
  end

end

class Task
  attr_accessor :description, :due_date
  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end
end



  t1 = Task.new("project outline", "24th Dec 2017")
  t2 = Task.new("send out questionnaires ", "29th Dec 2017")
  t3 = Task.new("data processing", "5th Jan 2018")
  t4 = Task.new("first draft review", "15th Jan 2018")
  t5 = Task.new("final version", "20rd Jan 2018")
  puts t5.due_date
  t5.due_date = "25th Jan 2018"
  puts t5.due_date
  puts t1.description
  list = TodoList.new
  list.add_task(t1)
  list.add_task(t2)
  list.display
