class Tab < ActiveRecord::Base
  belongs_to :venue
  has_many :user_tabs

  attr_accessible :name, :venue
  accepts_nested_attributes_for :user_tabs

  validates :name,
            :venue,
            :presence => {:message => "can't be blank"},
            :on => :create

end

