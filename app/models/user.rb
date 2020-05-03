class User < ActiveRecord::Base
 def to_pleasant_string
    "#{id}. name: #{name}  emailid: #{email} password: #{password}"
 end
end
