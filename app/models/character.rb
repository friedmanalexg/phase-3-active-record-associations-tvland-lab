class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say
        phrase_array = [self.name,self.catchphrase]
        phrase_array.join(" always says: ")
    end
end