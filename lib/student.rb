class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash) #{:name=>"james", :locationself}
    student_hash.each {|k, v| self.send(("#{k}="), v)}
    @@all << self
    binding.pry
  end

  def self.create_from_collection(students_array) #[name, location]
    students_array.each do |student_hash|
      self.new(student_hash)
    end
  end

  def add_student_attributes(attributes_hash) #hash of {twitter, linkedin, ...}
    attributes_hash.each do |k, v|
      self.send(("#{k}="), v)
    end
    self
   
  end
  def self.all
    @@all
  end
end