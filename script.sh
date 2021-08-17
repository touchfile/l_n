#!/bin/bash

echo && echo "Downloading CSV file from https://chronicdata.cdc.gov/500-Cities-Places/PLACES-Local-Data-for-Better-Health-County-Data-20/swc5-untb/data" && echo
if curl -o ./data.csv -L "https://chronicdata.cdc.gov/api/views/swc5-untb/rows.csv?accessType=DOWNLOAD";
then echo "Downloaded. Parsing now..."
else echo "Couldn't download the file."
fi && echo
awk 'NR % 11 == 1' data.csv > new_data.csv
echo "Done. The output is stored in 'new_data.csv' file."
