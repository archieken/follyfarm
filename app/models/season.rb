class Season < ApplicationRecord

  def start_time
        self.Season.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end
end
