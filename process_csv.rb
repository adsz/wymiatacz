# Obliczyć różnicę zamkniecia dnia aktualnego do zamknięcia dnia poprzedniego (w %)
# Posortować dane według różnic zamknięcia
# Wypisać 5 najlepszych i 5 najgorszych dni
# Policzyć ilość dni kiedy giełda była powyżej lub poniżej danej wartości

require 'open-uri'

URL="https://stooq.pl/q/d/l/?s=wig&i=d&c=1"
LOCAL_DIR="./data.csv"

def download_data_file(dir,url)
    File.open(dir, "wb") do |file|
    file.write open(url).read
  end
end

def import_data_into_array()
end

download_data_file(LOCAL_DIR,URL)