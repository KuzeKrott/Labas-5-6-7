# frozen_string_literal: true

require 'minitest/autorun'
require './main'

# testing func 'open_file'
class OpenFileTest < Minitest::Test
  def setup
    @array = ['ant', 'uncle', 'aunt', 'infinity', 'letter']
  end
  
  def test_file_exists
    file1 = File.new('test-file', 'w+')
    file1.write 'ant uncle aunt infinity letter'
    file1.close
    assert_equal open_file('test-file'), @array, 'Must be array'
  end

  def test_no_file
    assert_nil open_file('test-file-1'), 'Must be nil'
  end
end

# testing func 'files_compare'
class MaxWordTest < Minitest::Test
  def setup
    @array = ['ant', 'uncle', 'aunt', 'infinity', 'letter']
  end

  def test_empty_file
    assert_nil max_word([]), 'Returns -1 if arrays are equal'
  end

  def test_random_case
    assert_equal max_word(@array), 'infinity', 'Must be "infinity"'
  end
end
