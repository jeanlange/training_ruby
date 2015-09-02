class Person
  def initialize(first_name, last_name)
    set_first_name first_name
    set_last_name last_name
  end

  def set_first_name(first_name)
    @first_name = first_name
  end

  def set_last_name(last_name)
    @last_name = last_name
  end

  def get_first_name(first_name)
    @first_name = first_name
  end

  def get_last_name(last_name)
    @last_name = last_name
  end
end

class Person
  attr_accessor :first_name, :last_name
  attr_reader :public_info
  attr_writer :account_number

  def initialize(first, last)
    @first_name = first
    @last_name = last
  end
end
