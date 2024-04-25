# Build a CSV parsing system

def csv_parser(file_path)
  lines = File.readlines(file_path).map do |line|
    line.chomp.split(',')
  end
end


p csv_parser('generated_file.csv')
