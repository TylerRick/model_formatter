module Formatters
	class FormatCurrency < Format
		include ActionView::Helpers::NumberHelper

		def from(value)
			number_to_currency value
		end

		def to(str)
			str.gsub(/[$,]/, '')
		end
	end
end
