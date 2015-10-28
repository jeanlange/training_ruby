require 'json'
require './user'
require './vip_user'
require './company'

class Report
  def initialize
    @companies = []
  end

  def output
    out_string = template
    out_string += "
    | Active Users | Companies | Total Users |
    | #{active_users}| #{active_companies}| #{total_users}|
    "

    out_string += "Top Three Companies
    =============
      "

    top_3_companies.each do |company|
      out_string += company.to_s
    end

    out_string += "Users by State
    ============="

    users_by_state.each do |state, users|
      out_string += "Clients in #{state}\n"

      out_string += headers_for(users)
      users.each do |user|
        out_string += user.to_s
      end

      out_string += "\n"
    end
    out_string
  end

  private
  def users
    data = JSON.parse File.read('../data/roster.json')
    data.map do |record|

      if company = existing_company(record)
        company.employee_count += 1
      else
        @companies << Company.new(record['company'])
      end

      if record['name']['last'].include?('Walton')
        VipUser.new(record)
      else
        User.new(record)
      end
    end
  end

  def active_users
    users.select(&:active?).size
  end

  def active_companies
    @companies.size
  end

  def total_users
    users.size
  end

  def template
    "
    Summary
    =======
    "
  end

  def users_by_state
    users_by_state = users.group_by(&:state)
    users_by_state = users_by_state.sort
  end

  def headers_for(list_of_users)
    if list_of_users.any?(&:vip?)
      VipUser.report_header
    else
      User.report_header
    end
  end

  def existing_company(record)
    found_companies = @companies.select do |company|
      company.name == record['company']
    end
    if found_companies.any?
      return found_companies.first
    else
      return false
    end
  end

  def top_3_companies
    @companies.sort_by(&:employee_count).reverse.first(3)
  end

end

