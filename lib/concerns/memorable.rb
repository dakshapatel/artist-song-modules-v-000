module Memorable

  module ClassMethods
    def count
      #@@songs.count
      self.all.count
    end

    def reset_all
      #@@songs.clear
      self.all.clear
    end
  end

end
