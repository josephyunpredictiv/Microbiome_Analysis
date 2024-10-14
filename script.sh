DATABASE_PATH=
RAW_DATA_PATH=
OUTPUT_DIR=

module load kraken/2.1.2
cp -r /fdb/kraken/20210223_standard_16GB_kraken2 {Output_Directory}
kraken2 --db $DATABASE_PATH/20210223_standard_16GB_kraken2 --paired $RAW_DATA_PATH/{SAMPLE_ID}_R1.fastq.gz {SAMPLE_ID}_R2.fastq.gz --report $OUTPUT_DIR/SL24-1322_S1_report.txt
--output OUTPUT_DIR/kraken_output_SL24-1322_S1.txt
