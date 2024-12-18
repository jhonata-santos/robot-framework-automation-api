# Test Automation Project with Robot Framework for API
Automation project using the Robot Framework with a focus on automating backend services. With healthcheck, schema, business and e2e tests.

## Table of Contents
- [About the Project](#about-the-project)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Type of tests in the backend layer](#type-of-tests-in-the-backend-layer)
- [Installation](#installation)
- [How to Use](#how-to-use)
- [Artifacts](#artifacts)
- [Contributing](#contributing)
- [License](#license)

## About the Project
**robot-template-automation-api** was developed with the aim of consolidating the knowledge obtained in studies on test automation with Robot Framework for software testing in the Backend development layers.
It allows the creation of automation scripts in a simple and efficient way, and can be integrated with several other libraries and tools.

## Technologies Used
This project was developed using the following technologies:

- Robot Framework - Test automation framework.
- Python 3.8+ - Programming language.
- Pabot - Parallel test execution with Robot Framework.

## Project Structure
```
robot-template-automation-api/
├── .github/                    # 
│   ├── workflows/              # 
├── database/                   # Database configs e queries
├── reports/                    # Test execution reports
├── tests/                      # Automation Scenarios and Scripts  
│   ├── schemas/                # Schemas files (Schemas Json)
│   ├── services/               # Services files (Requests endpoints)
│   ├── specs/                  # Specs files (Specification Tests)
│   ├── steps/                  # Steps files (Keywords with test steps)
├── .gitignore                  # Files to be ignored by Git
├── credentials_template.yaml   # Sensitive data
├── LICENSE                     # Definition of license for distribution
├── README.md                   # Project documentation
├── requirements.txt            # Project dependencies
├── settings.yaml               # Project Settings and Toggles
```

## Type of tests in the backend layer
In the Backend layer, this project includes tests of the type:
- Healthcheck (Check success status code)
- Schema (Check the json schemas of the endpoints)
- Business (Check endpoint business rules)
- E2E (Check integrations between endpoints)

## Installation

### Prerequisites
- Python 3.8 or higher installed.
- pip for managing Python packages.

### Steps
1. Clone the repository:
```
git clone https://github.com/jhonata-santos/robot-template-automation-api
cd robot-template-automation-api
```
2. Create a virtual environment:
```
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```
3. Install the dependencies:
```
pip install -r requirements.txt
```

## How to Use

### Run Tests
To run the tests, use the following command:

```
robot -d reports tests/specs
```
This command runs all test suites in the ```tests/specs``` directory and generates the reports in the ```reports``` folder.

### Parallel Execution (Pabot)
To run tests in parallel, use Pabot:
```
pabot --processes 4 -d reports tests/specs
```
This command runs the tests using 4 parallel processes.

## Artifacts

### Reports
The reports generated from the test execution will be available in the ```reports/``` folder. You can access them by opening the ```log.html``` file in a web browser.

## Contributing
Contributions are welcome! To contribute to this project:

1. Create a new branch for your feature (```git checkout -b my-feature```).
2. Commit your changes (```git commit -m 'Add my feature'```).
3. Push to the remote repository (```git push origin my-feature```).
4. Open a Pull Request.

## License
This project is licensed under the MIT License.