PROJECT_ROOT="${1:-.}"

# Define all directories to create (relative to PROJECT_ROOT)
dirs=(
  "assets/css"
  "assets/js"
  "assets/images"
  "assets/fonts"
)

touch index.html style.css

# Loop through array and create each directory
for dir in "${dirs[@]}"; do
  mkdir -p "$PROJECT_ROOT/$dir"
done

echo "All folders created under: $PROJECT_ROOT"
live-server
