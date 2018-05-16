module Paramable
  module InstanceMethod
      #converts its name to a url friendly parameter
     def to_param
       name.downcase.gsub(' ', '-')
     end
 end
end
