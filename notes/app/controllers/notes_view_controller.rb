class NotesViewController < Nitron::TableViewController
  collection { Note.all }

  layout do |cell, note|
    cell.textLabel.text = note.subject
  end
end
