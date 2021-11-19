require "json"

module Dorian
  class SortJson
    def self.run
      if ARGV[0] == "--help" || ARGV[0] == "-h"
        puts "USAGE: sort-json FILES..."
        puts "USAGE: ... | sort-json"
        exit
      end

      inputs = ARGV

      if inputs.size.zero?
        inputs = STDIN.each_line.to_a

        if File.exist?(inputs.first.strip)
          inputs = inputs.map(&:strip)
        else
          inputs = [inputs.join]
        end
      end

      inputs.each do |input|
        content = File.exist?(input) ? File.read(input) : input
        json = JSON.pretty_generate(sort_json(JSON.parse(content))) + "\n"
        File.exist?(input) ? File.write(input, json) : puts(json)
      end
    end

    def self.sort_json(data)
      if data.is_a?(Array)
        data.map { |element| sort_json(element) }
      elsif data.is_a?(Hash)
        data
          .sort_by { |key, _value| key }
          .to_h
          .transform_values { |value| sort_json(value) }
      else
        data
      end
    end
  end
end
