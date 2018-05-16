module Paramable
  module InstanceMethod
    def to_para
      #converts its name to a url friendly parameter
     def to_param
       name.downcase.gsub(' ', '-')
     end
   end
 end
end
