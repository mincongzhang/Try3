#awk '{print $3, $5}':
#Awk breaks each line of input passed to it into fields.Then print out $3 and $5 fields

#awk: -F option to specify ":" as the field separator
#e.g.:  awk -F ';' '{print $21}'

cat file | grep sth | awk '{print $3, $5}'

#dump when 11th column is not empty
column="11"
filter=""
cat $dump_file | awk -F '|' -v col=$column -v fil=$filter '$col!=fil {print}' 
