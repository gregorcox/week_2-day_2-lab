class BusStop

  attr_reader :name, :queue


  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def length_of_queue
    return @queue.length
  end

  def add_to_queue(person)
    @queue.push(person)
  end

  def empty_queue
    @queue.clear
  end

end
