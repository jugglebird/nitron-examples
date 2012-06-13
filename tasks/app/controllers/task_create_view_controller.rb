class TaskCreateViewController < Nitron::ViewController
  on :cancel do
    close
  end

  on :save do
    Task.create(title: titleField.text, due: datePicker.date)

    close
  end
end
