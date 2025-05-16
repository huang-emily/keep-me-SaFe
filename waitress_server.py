from waitress import serve
import app
import os

# Run from the same directory as this script
this_files_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(this_files_dir)

serve(app, host="0.0.0.0", port=10000)
