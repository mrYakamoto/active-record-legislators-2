class Senator < ActiveRecord::Base
  # belongs_to :legislator
  def self.state_senators(state_abbr)
    return Senator.where(state: state_abbr)
  end
end
