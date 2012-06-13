class Task < Nitron::Model
  def self.all
    order("due")
  end

  def due
    primitiveValueForKey("due").to_s
  end
end
