class User < ActiveRecord::Base
  has_many :user_tabs
  has_many :tabs, through: :user_tabs
  accepts_nested_attributes_for :user_tabs, :tabs

  attr_accessible :name, :surname
  validates :name,
            :surname,
            :presence => {:message => "can't be blank"},
            :on => :create

end
