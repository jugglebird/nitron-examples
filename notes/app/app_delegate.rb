class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(NotesViewController.alloc.init)
    @window.makeKeyAndVisible

    note = Note.new
    note.subject = "Subject Line"
    note.contents = "This is a note. You created it the application was run."
    note.timestamp = NSDate.date
    note.save

    true
  end
end
