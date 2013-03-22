class HistoryEvent < ActiveRecord::Base
  attr_accessible :data, :model
  serialize :data
  def self.create_from(braintree_object)
    create(:model => braintree_object.class.name, :data => braintree_object.attributes)
  end
end
