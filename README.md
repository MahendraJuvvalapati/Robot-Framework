
# 🧪 Robot Framework Test Suite

This repository contains a collection of Robot Framework test cases demonstrating UI testing, data-driven testing, API testing, and custom keyword usage.

---

## 📁 Project Structure

.
├── Add To cart.robot
├── Assertions.robot
├── CustomLib.robot
├── DataFromCsv.robot
├── DataFromExcel.robot
├── DataFromJson.robot
├── FirstTest.robot
├── ForLoop.robot
├── Headless.robot
├── Iframes.robot
├── LoginTest.robot
├── Practice.robot
├── SetupOrTeardown.robot
├── Tags.robot
├── Templates.robot
├── Variables.robot
├── RestApi/ # API testing resources
├── Resource/ # Reusable resource and keyword files
├── Test Data/ # External test data (CSV, Excel, JSON)
├── Tests/ # Organized test suites (if any)
├── Reports/ # Optional report directory
└── results/ # Robot Framework output directory


## 🚀 Setup Instructions

### 1. ✅ Install Python

Make sure you have Python 3.8 or newer installed:

```bash
python --version
Download from: https://www.python.org/downloads/

2. ✅ Create a Virtual Environment (Recommended)
bash
Copy
Edit
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
3. ✅ Install Required Libraries

pip install --upgrade pip
pip install robotframework
pip install robotframework-seleniumlibrary
pip install robotframework-jsonlibrary
pip install robotframework-excellibrary
pip install robotframework-requests
💡 Add or remove libraries based on your specific .robot file usage.

🧪 Running Tests
▶️ Run All Tests in a Folder
robot -d results Tests/

Or run all .robot files in the root directory:
robot -d results .

▶️ Run a Specific Test File
robot -d results "Add To cart.robot"

▶️ Run Tests with Tags
robot -d results -i smoke .
robot -d results -e skip  # Exclude 'skip' tag

📊 Output
After execution, check the results/ folder. It will contain:

log.html – Detailed logs

report.html – Summary report

output.xml – Robot’s internal result file

✅ Useful Tips
Use pabot for parallel execution (optional):

pip install robotframework-pabot
pabot --processes 4 --outputdir results Tests/

To re-run failed tests:
robot -d results --rerunfailed results/output.xml .
robot -d results --merge results/output.xml results/output.xml
