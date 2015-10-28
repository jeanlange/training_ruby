class Company
  attr_accessor :name, :employee_count

  def initialize(name)
    @name = name
    @employee_count = 1
  end

  def to_s
    "- #{@name} (#{@employee_count} Users)"
  end
end
