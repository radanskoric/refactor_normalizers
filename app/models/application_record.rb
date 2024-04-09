class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.norm(&block)
    Norm.new.instance_exec &block
  end
end
