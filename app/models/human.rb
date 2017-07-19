class Human < ActiveRecord::Base
  self.table_name = 'humans'
  include Character
end
