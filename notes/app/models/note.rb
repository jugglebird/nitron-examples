class Note < Nitron::Entity
  field :timestamp, :type => Time
  field :subject,   :type => String
  field :contents,  :type => String

  def self.all
    NSFetchRequest.alloc.init.tap do |request|
      request.entity = NSEntityDescription.entityForName("Note", inManagedObjectContext:context)
      request.fetchBatchSize = 20
      request.includesPendingChanges = false
      request.sortDescriptors = [NSSortDescriptor.alloc.initWithKey("timestamp", ascending:true)]
    end
  end
end
