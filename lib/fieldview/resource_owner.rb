module Fieldview
	class ResourceOwner < Fieldview::Base

		attr_accessor :id, :name, :email

		def initialize(attrs)
			attrs.each do |key, value|
        instance_variable_set("@#{key.to_s.underscore}", value)
			end
		end
	end
end