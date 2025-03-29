#!/bin/bash

# Usage: ./import_csv_to_sqlite.sh path/to/file.csv database.db table_name

CSV_FILE="$1"
DB_FILE="$2"
TABLE_NAME="$3"

# Check arguments
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 path/to/file.csv database.db table_name"
  exit 1
fi

# Check if the CSV file exists
if [ ! -f "$CSV_FILE" ]; then
  echo "Error: CSV file '$CSV_FILE' not found."
  exit 1
fi

# Import the CSV into the SQLite database
sqlite3 "$DB_FILE" <<EOF
.mode csv
.headers on
.import --skip 1 '$CSV_FILE' $TABLE_NAME
EOF

echo "✅ Imported '$CSV_FILE' into table '$TABLE_NAME' in '$DB_FILE'"