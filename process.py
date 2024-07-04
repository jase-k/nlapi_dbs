import csv
import re
import sys

def remove_unpaired_quotes(file_path):
    # Increase the CSV field size limit
    csv.field_size_limit(sys.maxsize)
    
    with open(file_path, 'r', encoding='utf-8') as infile, open('title.akas.cleaned.ae.tsv', 'w', encoding='utf-8') as outfile:
        reader = csv.reader(infile, delimiter='\t')

        for row in reader:
            cleaned_row = []
            for cell in row:
                # Find unescaped quotes
                unescaped_quotes = re.findall(r'(?<!\\)"', cell)
                # print("Unescaped quotes found in cell: ", len(unescaped_quotes))
                if len(unescaped_quotes) % 2 != 0:
                    # Remove all quotes if unpaired
                    cell = re.sub(r'(?<!\\)"', '', cell)
                cleaned_row.append(cell)
            # Join the cleaned row with tab delimiter and write to the file
            outfile.write('\t'.join(cleaned_row) + '\n')

# Path to the input file
file_path = 'dbs/movies/data/title.akas_part_ae'
# file_path = 'sample.tsv'
remove_unpaired_quotes(file_path)