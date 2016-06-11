class Reinterpretation < ActiveRecord::Base
  belongs_to :assumption
  has_many :secondstories
end
