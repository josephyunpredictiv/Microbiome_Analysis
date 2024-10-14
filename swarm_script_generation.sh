# Array of sample identifiers
samples=(
    "Sample1"
    "Sample2"
)

# Path to Kraken2 database
db_path=
# Input and output directories
raw_data_dir=

# Loop through each sample
for sample in "${samples[@]}"; do
    # Run Kraken2 for each sample
    command=“kraken2 --db "$db_path" \
            --paired "$raw_data_dir/${sample}_R1.fastq.gz" "$raw_data_dir/${sample}_R2.fastq.gz" \
            --report "$output_dir/${sample}_report.txt" \
            --output "$output_dir/kraken_output_${sample}.txt"”
    echo $command
done
