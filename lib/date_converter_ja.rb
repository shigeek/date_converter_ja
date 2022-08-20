# frozen_string_literal: true

require_relative "date_converter_ja/version"

module DateConverterJa
  class Error < StandardError; end

  def ampm_jp
    case self.hour
    when 12
      '昼'
    when 0
      '深夜'
    when 1..11
      '午前'
    when 13..23
      '午後'
    else
      raise 'Unpredicted time.'
    end
  end
end

class Date
  include AmPm
end
