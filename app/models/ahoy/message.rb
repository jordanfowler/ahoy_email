module Ahoy
  class Message < ApplicationRecord
    self.table_name = "ahoy_messages"

    belongs_to :user, AhoyEmail.belongs_to.merge(polymorphic: true)
  end
end
