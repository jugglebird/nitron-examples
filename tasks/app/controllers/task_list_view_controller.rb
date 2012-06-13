class TaskListViewController < Nitron::TableViewController
  collection { Task.all }
end
