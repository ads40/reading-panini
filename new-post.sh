#!/bin/bash

# Prompt for the slug and title
read -p "Enter the slug (e.g., my-new-post): " slug
read -p "Enter the title: " title
read -p "Enter the category (posts, texts, biblio, glossary): " category

# Get today's date
date=$(date +"%Y-%m-%d")s

# Define the file path
file_path="content/${category}/${slug}.md"

# Create the new markdown file with front matter
cat <<EOL > $file_path
+++
title = "${title}"
date = ${date}
[taxonomies]
tags = ["${category}"]
+++

EOL

echo "New post created at $file_path"
