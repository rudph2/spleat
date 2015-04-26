class UserTab < ActiveRecord::Base
  belongs_to :tab
  belongs_to :user
  has_many :payments

  attr_accessible :tab, :user
  accepts_nested_attributes_for :payments

  validates :tab,
            :user,
            :presence => {:message => "can't be blank"},
            :on => :create

end
