#!/bin/bash

input_folder="./amyaya_dataset"
output_folder="./output_vocals"

mkdir -p "${output_folder}"

for file in "$input_folder"/*.{wav,mp3}; do
  file=""
  if [ -f "$file" ]; then
    echo "Processing $file..."
    filename="$(basename ${file})_vocals.wav"
    # python3 -m demucs --two-stems=vocals -d cpu -o "${output_folder}" --float32 "${file}"
    python3 -m demucs -d cpu -o "${output_folder}" --float32 "${file}"
  fi
  break
done

echo "Finished processing all files."
