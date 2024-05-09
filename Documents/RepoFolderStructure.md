# Repo Folder Structure and Setup

Reqired folder structure for Innov is as shown below.

## Setup Checklist

1. Copy or fork this repo named for a project. Do as follows in the new repo.
1. Install Innovator using the .msi on your development machine.
1. Edit Master_Config.xml for your machine name by copying and editing the sample.
1. Edit Param_Config.xml for your project.
1. Copy ConsoleUpgrade and SDK IOM from PackageImportExportUtilities and Utilities/IOMSDK (or installed Innovator/Server/bin/IOM.dll) to tools folder.
1. Run the script Use-Steps.ps1 for Step 1.

## Repo Folder Structure

- +---AML-Packages           
    - Packages and manifest files
- +---AutoTest
    - Pester (Powershell Tester) scripts
- +---Documents
    - Documents in markdown format
- +---Innovator
    - Innovator Tree
- +---InnovConfig
    - Module. See Documents\InnovConfigGuide.md
- +---src
    - Text files, mostly AML
    - +---PostProcessing
        -  applied after Import
    - +---PreProcessing
        - applied after Import
    - +---Test-AML
        - used by AutoTest
- +---Temp
    - Temporary files, excluded in .gitignore
    - +---Export
        - Destination for Consolue Upgrade, for merging to AML-Pacakges
    - \\---Logs
        - From ConsoleUprade and other tools
- +---tools
    - dlls for specific Innovator release
        - +---ConsoleUpgrade
        - \\---IOM_SDK


