
**Installation and Setup**

1. Download and Install Visual Studio Code (VSCode):
   - Visit the VSCode website: https://code.visualstudio.com
   - Download and install the appropriate version for your operating system.
   - Follow the default installation instructions provided by the VSCode installer.
2. Install Truffle Extension in VSCode:
   - Open VSCode.
   - Click on the "Extensions" icon on the left sidebar or press `Ctrl+Shift+X`.
   - In the Extensions search bar, type "Truffle" and press Enter.
   - Look for the "Truffle Suite" extension and click on the "Install" button.
   - Wait for the installation to complete, and you should see the "Truffle Suite" extension listed in your installed extensions.
Further, it opens up a window with all the dependency requirements that should be installed with specific versions, based on the versions allowed – Install the below
3. Install Node.js and npm:
   - Download and install Node.js from the official website: https://nodejs.org
   - npm (Node Package Manager) is included with Node.js, so you don't need to install it separately.
   - Follow the installation instructions provided by the Node.js installer.
4. Install Git (optional)
   - If you want to use Git for version control, you can download and install it from: https://git-scm.com/downloads
   - Git is not required for the basic setup but is useful for managing your project's source code.
5. Install Ganache:
   - Ganache is a local blockchain server for development and testing.
   - Visit the Ganache website: https://www.trufflesuite.com/ganache
   - Download and install the appropriate version for your operating system.
   - Follow the installation instructions provided by the Ganache installer.
6. Install Truffle globally:
   - Open a terminal or command prompt.
   - Run the following command to install Truffle globally:
     ```
     npm install -g truffle
     ```
7. Install Slither – This Will be available in Extension list for VSCode – Download and Install beforehand
   - Slither is a static analysis tool for detecting vulnerabilities in Solidity code.
   - Open a terminal or command prompt.
   - Run the following command to install Slither:
     ```
     pip install slither-analyzer
     ```
   - Note: Slither requires Python and pip to be installed on your system.



**CREATING NEW TRUFFLE PROJECT**

1. Create a new Truffle project:
   - Decide on a directory where you want to create your project.
   - Open a terminal or command prompt and navigate to the chosen directory.
   - Run the following command to initialize a new Truffle project:
     ```
     truffle init
     ```
   - This command will create a basic project structure with some default files.

	a. Creating Original Folders and Contract


	b. Cloning from Git Repository



2. Set up the project in VSCode:
   - Open Visual Studio Code.
   - Click on "File" > "Open Folder" and select the root folder of your Truffle project.
   - VSCode will load the project and its files.

3. Configure Ganache in VSCode:
    - In VSCode, click on the "Extensions" button on the left sidebar.
    - Search for the "Ganache" extension and install it.
    - Once installed, click on the "Ganache" icon in the left sidebar.
    - Click on the "+" button to add a workspace.
    - Enter a name for the workspace and specify the network details (e.g., host, port, network ID).
    - Save the workspace configuration.

=====================================================

**ESCROW SMART CONTRACT – Context of .sol codes: 
Project\contracts\<.sol files>**

In the context of a blockchain smart contract deployed to a platform like Ganache, the combination of both the `Escrow.sol` and `Migrations.sol` codes provides a functional and upgradable escrow system.
**Escrow.sol Functionality**
The `Escrow.sol` code implements the escrow functionality. It allows a buyer to deposit funds, release funds to the seller, and allows the seller to refund funds to the buyer. It keeps track of the status of the escrow using the `EscrowStatus` enumeration. This contract ensures secure and transparent transactions between the buyer and the seller, providing a trusted intermediary for holding funds until the conditions are met.
**Migrations.sol Functionality**
On the other hand, the `Migrations.sol` code provides a framework for managing migrations and upgrading contracts. It includes a mechanism for tracking the completion of migrations using the `last_completed_migration` variable. The `restricted` modifier restricts certain operations, such as setting completion or upgrading, to the contract owner. This code enables the contract to be easily upgraded or migrated to a new address, allowing for improvements or bug fixes in the contract's functionality without losing any stored data.
**Combinational-Use**
The combination of these two codes allows for the deployment of an escrow contract on the Ganache blockchain platform that provides secure fund handling and can be upgraded or migrated when necessary. The `Migrations.sol` code ensures the contract can evolve over time, while the `Escrow.sol` code provides the specific escrow functionality required for secure transactions.


