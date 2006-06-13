require 'rubygems'
require 'action_view'

module Formatters
	class FormatInteger < Format
		include ActionView::Helpers::NumberHelper

		def from(value)
			number_with_delimiter value
		end

		def to(str)
			return nil if str.nil? or str.empty?
			str.gsub(/,/, '').to_i
		end
	end
end
