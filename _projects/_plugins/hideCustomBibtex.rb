 module Jekyll
  module HideCustomBibtex
    def hideCustomBibtex(input)
	  keywords = @context.registers[:site].config['filtered_bibtex_keywords']

	  keywords.each do |keyword|
		input = input.gsub(/^.*#{keyword}.*$\n/, '')
	  end

      return input
    end
  end
end

Liquid::Template.register_filter(Jekyll::HideCustomBibtex)

require 'latex/decode'
# Disable the Math module of latex-decode as it interferes with MathJax
module LaTeX
  module Decode
    class Maths < Decoder
      def self.decode! (string)
        string
      end
    end
  end
end
