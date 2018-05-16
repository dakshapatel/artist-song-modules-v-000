module Findable


  module ClassMethods
    def find_by_name
      #can find a song by name
      def self.find_by_name(name)
        #@@songs.detect{|a| a.name == name}
        all.detect{|a| a.name == name}
      end

      #can find an artist by name
      def self.find_by_name(name)
        #@@artist.detect{|a| a.name == name}
        all.detect{|a| a.name == name}
      end
    end 
  end

  module InstanceMethod
    #converts its name to a url friendly parameter
    def to_param
      name.downcase.gsub(' ', '-')
    end

  end 


end
