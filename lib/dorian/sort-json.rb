require 'json'

module Dorian
  class SortJson
    def self.run
      if ARGV.size < 1
        puts 'USAGE: sort-json FILE [FILE...]'
        exit
      end

      ARGV.each do |filepath|
        File.write(
          filepath,
          JSON.pretty_generate(sort_json(JSON.parse(File.read(filepath)))) +
            "\n"
        )
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
