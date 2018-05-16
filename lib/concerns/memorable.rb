module Memorable

  module ClassMethods
    def count
      #@@songs.count
      all.count
    end

    def reset_all
      #@@songs.clear
      all.clear
    end
  end

end
