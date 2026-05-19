# DIIJ Project - Library Management System

This repository contains the `DIIJ Project` built using Java JDBC and Apache Derby Embedded Database. 

## Features
- Console-based CLI application for Library Management.
- Features include member registration, adding books, processing loans, returning books, and viewing overdue items.
- Full transaction management using JDBC with ACID compliance.
- Benchmark and performance evaluation module.

## Prerequisites
- **Java Development Kit (JDK) 21** or newer.
- Ensure `java` and `javac` are added to your system's `PATH`.

## Setup and Run Instructions (Windows / PowerShell)

1. **Clone the repository:**
   ```powershell
   git clone https://github.com/M0h1tkumar/diij_project_using-jdbc.git
   cd diij_project_using-jdbc/2341011177_MohitKumar
   ```

2. **Compile the source code:**
   ```powershell
   New-Item -ItemType Directory -Force -Path out
   $sources = Get-ChildItem -Recurse -Filter *.java src | ForEach-Object { $_.FullName }
   javac -d out $sources
   ```

3. **Run the interactive application:**
   ```powershell
   java -cp "out;lib\derby.jar;lib\derbyshared.jar;lib\derbytools.jar" mohitkumar_2341011177.MainApp
   ```

4. **(Optional) Run the automated self-test:**
   ```powershell
   java -cp "out;lib\derby.jar;lib\derbyshared.jar;lib\derbytools.jar" mohitkumar_2341011177.MainApp --self-test
   ```

## Setup and Run Instructions (Linux / macOS)

1. **Clone the repository:**
   ```bash
   git clone https://github.com/M0h1tkumar/diij_project_using-jdbc.git
   cd diij_project_using-jdbc/2341011177_MohitKumar
   ```

2. **Run using the provided script:**
   ```bash
   ./run.sh
   ```
   *(To run the automated tests, execute `./run.sh --self-test`)*

## License
This project is licensed under the GNU GPLv3 License. See the [LICENSE](LICENSE) file for more details.
