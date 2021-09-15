# frozen_string_literal: true

require "json"

# JsonFlattener module only have one public function `flatten`
class JsonFlattener

  # Assumptions:
  # 1. The input must be a JSON object
  # 2. All keys named in the original object will be simple strings without '.' characters
  # 3. The input JSON will not contain arrays
  def self.flatten_str(json_str)
    json_h = JSON.parse(json_str)
    flattend_h = flatten_hash(json_h)
    JSON.pretty_generate(flattend_h)
  end

  def self.flatten_hash(json_h)
    json_h.each_with_object({}) do |(key, value), hash|
      if value.is_a? Hash
        flatten_hash(value).map do |inner_key, inner_value|
          hash["#{key}.#{inner_key}"] = inner_value
        end
      else
        hash[key] = value
      end
    end
  end
end
