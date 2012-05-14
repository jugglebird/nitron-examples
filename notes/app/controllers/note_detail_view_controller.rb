class NoteDetailViewController < Nitron::Controller
  attr_accessor :note

  bind :subjectLabel,     :tag => 1
  bind :timestampLabel,   :tag => 2
  bind :contentsTextView, :tag => 3

  def viewWillAppear(animated)
    super

    @subjectLabel.text = note.subject
    @timestampLabel.text = note.timestamp.to_s
    @contentsTextView.text = note.contents
  end

end
