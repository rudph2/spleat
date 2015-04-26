class Payment < ActiveRecord::Base
  belongs_to :user_tab

  attr_accessible :value, :user_tab, :payment_date, :success_status
  validates :value,
            :user_tab,
            :payment_date,
            :presence => {:message => "can't be blank"},
            :on => :create

end
