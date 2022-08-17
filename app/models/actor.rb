class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        names_array = [self.first_name,self.last_name]
        names_array.join(" ")
    end

    def list_roles
        self.characters.map {|c| "#{c.name} - #{c.show}"}
        #still doesn't work
        
    end
end