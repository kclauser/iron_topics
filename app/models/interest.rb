class Interest < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  validates :level, inclusion: [1,2,3,4,5]
end
