class Legislator < ActiveRecord::Base
  has_one :party
  has_one :state
end
