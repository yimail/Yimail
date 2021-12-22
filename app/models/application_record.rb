class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
#random fake email
  def self.random
    self.order(Arel.sql('RANDOM()')).first
  end
end
