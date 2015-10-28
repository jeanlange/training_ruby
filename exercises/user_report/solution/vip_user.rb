class VipUser < User
  def to_s
    "| #{@name} | #{@address} | #{@balance} | #{@vip} |\n"
  end

  def self.report_header
    "| Name | Address | Balance | VIP? |\n"
  end
end
