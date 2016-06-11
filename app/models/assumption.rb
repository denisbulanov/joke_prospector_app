class Assumption < ActiveRecord::Base
  belongs_to :setup
  has_many :reinterpretations
end
