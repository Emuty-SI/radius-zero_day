#!/bin/bash

PROJECT_DIR="$HOME/radius-projects/website-project"

# F. Protect existing directories
if [ -d "$PROJECT_DIR" ]; then
    echo "Error: The directory $PROJECT_DIR already exists. Aborting to prevent overwriting."
    exit 1
fi

# Create directories
mkdir -p "$PROJECT_DIR/css"
mkdir -p "$PROJECT_DIR/js"
mkdir -p "$PROJECT_DIR/images"

# E. Generate meaningful content
cat << 'EOF' > "$PROJECT_DIR/index.html"
<!DOCTYPE html>
<html>
<head><title>My Website</title></head>
<body><h1>Welcome to my website</h1></body>
</html>
EOF

cat << 'EOF' > "$PROJECT_DIR/css/style.css"
body { background-color: #f4f4f4; font-family: Arial; }
EOF

cat << 'EOF' > "$PROJECT_DIR/js/script.js"
console.log("Hello from JavaScript!");
EOF

echo "# Website Project" > "$PROJECT_DIR/README.md"
echo "# CSS Directory" > "$PROJECT_DIR/css/README.md"
echo "# JS Directory" > "$PROJECT_DIR/js/README.md"
echo "# Images Directory" > "$PROJECT_DIR/images/README.md"

# G. Completion message
echo "Success! Website project created at: $PROJECT_DIR"
