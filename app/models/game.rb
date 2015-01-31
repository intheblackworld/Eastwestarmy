class Game < ActiveRecord::Base
  has_one :east
  has_one :west
end
