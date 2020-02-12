# Obliczyć różnicę zamkniecia dnia aktualnego do zamknięcia dnia poprzedniego (w %)
# Posortować dane według różnic zamknięcia
# Wypisać 5 najlepszych i 5 najgorszych dni
# Policzyć ilość dni kiedy giełda była powyżej lub poniżej danej wartości

require 'open-uri'
require 'csv'

URL="https://stooq.pl/q/d/l/?s=wig&i=d&c=1"
FILE_PATH="./data.csv"

class Get_file
  def download_data_file(file_path,url)
      File.open(file_path, "wb") do |file|
        file.write open(url).read
      end
  end
end

class Import_data
  def import_data_into_array(file_path)
    table = CSV.parse(File.read(file_path),col_sep: ";", headers: true)
    #puts table[0][0]
  end
end

class Add_Closing_Price_Difference
  
end

#get_file = Get_file.new
import_data = Import_data.new

#get_file.download_data_file(FILE_PATH,URL)
imported_data=import_data.import_data_into_array(FILE_PATH)
puts imported_data[1][1]
