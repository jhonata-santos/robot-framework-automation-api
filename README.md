# Automation project for Acceptance Testing with Robot Framework
Projeto de automação utilizando o Robot Framework, focado em automatização de testes de software e tarefas repetitivas (RPA).

## Table of Contents
- [About the Project](#about-the-project)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [How to Use](#how-to-use)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## About the Project
robot-project-automation was developed with the aim of consolidating knowledges in test automation using the Robot Framework to software testing in all development layers (Backend, Frontend and Mobile). It allows the creation of automation scripts in a simple and efficient way, and can be integrated with several other libraries and tools.

## Technologies Used
This project was developed using the following technologies:

- Robot Framework - Test automation framework.
- Python 3.8+ - Programming language.
- SeleniumLibrary - Robot Framework library for web automation.
- Pabot - Parallel test execution with Robot Framework.

## Project Structure
```
robot-project-automation/
├── database/                   # Database configs
├── reports/                    # Test execution reports
├── tests/                      # Automated tests with Robot Framework
│   ├── backend/                # Backend layer         
│       ├── resources/          # Resource files (Keywords)
│       ├── schemas/            # Schemas files (Schemas Json)
│       ├── services/           # Services files (Requests endpoints)
│       ├── specs/              # Specs files (Description Tests)
│   ├── frontend/               # Frontend layer
│       ├── TODO/               # To Be defined
│   ├── mobile/                 # Mobile layer
│       ├── TODO/               # To Be defined
├── .gitignore                  # Files to be ignored by Git
├── README.md                   # Project documentation
├── requirements.txt            # Project dependencies
```

## Type of tests in the backend layer
In the Backend layer, this project includes tests of the type
- Healthcheck
- Contract
- Business
- E2E

## Installation

### Prerequisites
- Python 3.8 or higher installed.
- pip for managing Python packages.

### Steps
1. Clone the repository:
```
git clone https://github.com/jhonata-santos/robot-project-automation.git
cd robot-project-automation
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
robot -d reports tests/backend/specs
```
This command runs all test suites in the ```tests/backend/specs``` directory and generates the reports in the ```reports``` folder.

### Parallel Execution (Pabot)
To run tests in parallel, use Pabot:
```
pabot --processes 4 -d reports tests/backend/specs
```
This command runs the tests using 4 parallel processes.


## Testing

### Reports
The reports generated from the test execution will be available in the ```reports/``` folder. You can access them by opening the ```log.html``` file in a web browser.

## Contributing
Contributions are welcome! To contribute to this project:

1. Fork the project.
2. Create a new branch for your feature (```git checkout -b my-feature```).
3. Commit your changes (```git commit -m 'Add my feature'```).
4. Push to the remote repository (```git push origin my-feature```).
5. Open a Pull Request.

## License
This project is licensed under the MIT License.