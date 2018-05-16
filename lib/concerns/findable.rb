module Findable


  module ClassMethods
      #can find a song by name
      def find_by_name(name)
        #@@songs.detect{|a| a.name == name}
        all.detect{|a| a.name == name}
      end

      #can find an artist by name
      def find_by_name(name)
        #@@artist.detect{|a| a.name == name}
        all.detect{|a| a.name == name}
      end
  end




end
