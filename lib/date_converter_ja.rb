# frozen_string_literal: true

require_relative "date_converter_ja/version"

module DateConverterJa
  class Error < StandardError; end

  def ampm
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

  def time_with_ampm
    self.strftime("#{ampm} %H:%M")
  end

  def time_without_ampm
    self.strftime("%H:%M")
  end

  def date_and_time_with_ampm
    self.strftime("%Y/%m/%d(%a) #{ampm} %H:%M")
  end
end

class Date
  include DateConverterJa
end
