# Build a CSV generator

require "csv"

def csv_tool(headers, data)
  CSV.open('generated_file.csv', "wb") do |csv|
    csv << headers

    data.each do |column|
      csv << column
    end
  end
end


headers = ["Name", "Title", "Email"]
data = [["Seb", "Dev", "seb@email.com"],
        ["Ida", "Film", "ida@email.com"],
        ["Izan", "Chef", "izan@email.com"]]

csv_tool(headers, data)
