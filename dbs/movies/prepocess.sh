#!/bin/bash
input_file="benchmarking/db_movies/data/title.akas.processed.tsv"
output_file="benchmarking/db_movies/data/title.akas.processed2.tsv"

awk -F'\t' 'BEGIN {OFS="\t"} NR>1 {$7="{"$7"}"} 1' "$input_file" > "$output_file"
#!/bin/bash
# input_file="title.basics.processed.tsv"
# output_file="title.basics.cleaned.csv"

# awk -F'\t' 'BEGIN {OFS=","} {
#   for (i = 1; i <= NF; i++) {
#     gsub(/"/, "\\\"", $i);
#     $i = "\"" $i "\"";
#   }
#   print $0
# }' "$input_file" > "$output_file"
