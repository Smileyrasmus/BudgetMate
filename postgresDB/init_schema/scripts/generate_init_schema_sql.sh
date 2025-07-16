#!/bin/sh

# This script assumes work directory is in <git_root>/postgresDB/init_schema

append_sql_files() {
  for file in "$@"; do
    # Check that the file exists
    if [ -f "$file" ]; then
      cat <<EOF >> $OUTPUT_FILE
\\echo Running '$file'
\\i '$file'
EOF
    fi
  done
}

write_echo_header() {
  cat <<EOF >> $OUTPUT_FILE
\\echo $1
EOF
}


OUTPUT_DIR="./output"
MASTER_FILE="init_schema.sql"
OUTPUT_FILE="$OUTPUT_DIR/$MASTER_FILE"

mkdir $OUTPUT_DIR

# Start the file
cat <<EOF > $OUTPUT_FILE
\\echo Starting SQL process...

\\o log.txt
EOF

write_echo_header "STEP 1 of 3 - Creating domains"
append_sql_files domains/*.sql

write_echo_header "STEP 2 of 3 - Creating tables"
append_sql_files tables/*.crea.sql

write_echo_header "STEP 3 of 3 - Adding constraints and foreign keys to tables"
append_sql_files tables/*.cons.sql

# Finish the file
cat <<EOF >> $OUTPUT_FILE

\\o
\\echo Done!
EOF

echo "Generated $OUTPUT_FILE successfully!"