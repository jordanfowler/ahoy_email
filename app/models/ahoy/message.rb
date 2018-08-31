module Ahoy
  class Message < ApplicationRecord
    if self.respond_to?(:table_name)
      self.table_name = "ahoy_messages"
    end

    if respond_to?(:belongs_to)
      belongs_to :user, AhoyEmail.belongs_to.merge(polymorphic: true)
    end
  end
end
