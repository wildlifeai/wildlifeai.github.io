#!/bin/bash

# Move into the docs folder
cd docs

# List all Markdown files in order
FILES=(
  index.md
  1_package_container.md
  2_setup_mobile_app.md
  3_setup_extenal_tool.md
  4_setup_the_device.md
  5_start_a_deployment.md
  6_image_processing.md
)

# Convert to PDF using pandoc
pandoc "${FILES[@]}" -o user-guide.pdf --toc --metadata title="User Guide" --pdf-engine=xelatex

echo "✅ PDF generated at docs/user-guide.pdf"
