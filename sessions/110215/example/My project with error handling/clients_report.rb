class ClientsReport
  def initialize(list_of_names)
    @names = list_of_names
  end

  def output
    out_string = ""
    @names.each do |name|
      name = name.capitalize
      name = name+"\n"
      out_string += name
    end
    out_string
  end

  def first_client
    @names.first.capitalize
  end
end
