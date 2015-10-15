class Interest < ActiveRecord::Base
  belongs_to :topic
  validates :level, inclusion: [1,2,3,4,5]
end
