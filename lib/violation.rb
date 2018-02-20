require 'csv'

class Violation

  def initialize
    @info = []
  end

  def parse_csv(path)
    CSV.foreach(path, headers: true) do |row|
      self.consume_info(row)
    end
  end

  def consume_info(info)
    @info << info
  end


end
