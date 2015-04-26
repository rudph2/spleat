module Spleat
  module Models
    class Venue < ActiveRecord::Base
      has_many :tabs

      attr_accessible :name
      accepts_nested_attributes_for :tabs

      validates :name,
                :presence => {:message => "can't be blank"},
                :on => :create

    end
  end
end

