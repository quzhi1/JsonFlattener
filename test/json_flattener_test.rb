# frozen_string_literal: true

require "test_helper"
require_relative "../lib/json_flattener"

class JsonFlattenerTest < Minitest::Test

  def test_flatten_json_str
    json_str = File.read("test/test_files/test.json")
    output_str = JsonFlattener.flatten_str(json_str)
    parsed_output = JSON.parse(output_str)
    expected = {
      "first_level_int"=>123,
      "first_level_bool"=>true,
      "first_level_object.second_level_string"=>"hello",
      "first_level_object.second_level_object.third_level_int"=>456
    }
    assert_equal(expected, parsed_output)
  end
end
