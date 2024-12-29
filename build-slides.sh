#!/bin/bash

# Ensure the script exits on errors
set -e

# Define source and output directories
SOURCE_DIR="lectures"
OUTPUT_DIR="output"

echo "Starting slide build process..."

# List of slides to compile
slides=(
    "git-and-versioning/git-and-versioning.md"
    "build-systems/build-systems.md"
    "c-programming-review.md"
    "unit-integration-testing.md"
    "pointers-part1.md"
    "pointers-part2.md"
    "linked-lists.md"
    "stacks-and-queues.md"
    "memory-management.md"
    "device-drivers-part1.md"
    "device-drivers-part2.md"
    "real-world-case-studies.md"
    "final-project.md"
)

# Loop through each slide and compile it
for slide in "${slides[@]}"; do
    input_file="$SOURCE_DIR/$slide"
    output_dir="$OUTPUT_DIR/$(basename "${slide%.md}")"
    
    echo "Building $input_file -> $output_dir"
    
    # Create the output directory if it doesn't exist
    mkdir -p "$output_dir"
    
    # Compile the slide using reveal-md
    reveal-md "$input_file" --static "$output_dir"
done

echo "Slide build process completed successfully!"
