class BaseFile
  def initialize(file_name)
    @file_name = file_name
  end

  def read_all_records
    file_data = ''
    if File.exist?(@file_name)
      file = File.open(@file_name)
      file_data = file.readlines.map(&:chomp)
      file.close
    end
    file_data
  end

  def find(id)
    record = ''
    if File.exist?(@file_name)
      file = File.open(@file_name)
      file_data = file.readlines.map(&:chomp)
      file.close
      file_data.each do |line|
        return line if JSON.parse(line)['id'] == id
      end
    end
    record
  end

  def find_all(field, id)
    records = []
    if File.exist?(@file_name)
      file = File.open(@file_name)
      file_data = file.readlines.map(&:chomp)
      file.close
      file_data.each do |line|
        records << line if JSON.parse(line)[field] == id
      end
    end
    records
  end

  def write_object(json_object)
    mode = File.exist?(@file_name) ? 'a' : 'w'
    File.open(@file_name, mode) { |f| f.write "#{json_object}\n" }
  end
end
