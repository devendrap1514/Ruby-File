require "csv"
hsh = {}
CSV.foreach("r71.csv", headers: true, col_sep: ",") do |row|
    print(row)
    # if hsh.has_key?(row[0])
    #     hsh[row[0]] += row[1].to_i
    # else
    #     hsh[row[0]] = row[1].to_i
    # end
end
print(hsh)

# require 'csv'
# CSV.foreach(("r71.csv"), headers: true, col_sep: ",") do |row|
#     print row 
# end 
