module Memorable

  module ClassMethods
    def self.count
      #@@songs.count
      self.all.count
    end

    def self.reset_all
      #@@songs.clear
      self.all.clear
    end
  end
   
end
