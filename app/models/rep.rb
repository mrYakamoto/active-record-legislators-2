class Rep < ActiveRecord::Base
  # belongs_to :legislator
  def self.state_reps(state_abbr)
    return Legislator.where(state: state_abbr)
  end
end
