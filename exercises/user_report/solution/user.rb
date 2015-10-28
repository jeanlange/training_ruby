class User
  attr_accessor :address, :state, :name, :balance, :vip, :active

  def initialize(source_data)
    @address = source_data["address"]
    @name = "#{source_data["name"]["first"]} #{source_data["name"]["last"]}"
    @balance = source_data["balance"]
    @active = source_data["isActive"]
    @state = @address.match(/(?<state>\w+?\s?\w+), \d+$/)[:state]
    if vip?
      @vip = '*'
    else
      @vip = ''
    end
  end

  def active?
    @active
  end

  def vip?
    @name.include?('Walton')
  end

  def to_s
    "| #{@name} | #{@address} | #{@balance} |\n"
  end

  def self.report_header
    "| Name | Address | Balance |\n"
  end

end
