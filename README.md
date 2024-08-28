# EdTech Integration Hub

The EdTech Integration Hub is a decentralized platform built on the Ethereum blockchain, enabling educational institutions to offer courses and students to enroll in them securely and transparently. This project utilizes smart contracts written in Solidity to manage institution registration, course creation, and student enrollment.

## Vision

The EdTech Integration Hub aims to create a decentralized, transparent, and secure ecosystem for education. By leveraging blockchain technology, it empowers educational institutions to offer courses globally and ensures that students can enroll in courses without the need for intermediaries, fostering a more open and accessible educational environment.

## Features

- **Institution Registration:** Institutions can register themselves on the platform to offer courses.
- **Course Management:** Registered institutions can create and manage courses, including setting fees and availability.
- **Student Registration:** Students can register on the platform and manage their enrollments.
- **Course Enrollment:** Students can enroll in courses by paying the required fee directly through the smart contract.
- **Transparency & Security:** All transactions and data are stored securely on the blockchain, ensuring that records are tamper-proof and transparent.

## System Diagram

### Conceptual Diagram

```
[Institution Registration] -> [EdTech Integration Hub (Smart Contract)] -> [Course Management]
  |                                                                                  |
[Student Registration] ------------------------------------------------------> [Course Enrollment]
  |
  |----> [Enroll in Course] -> [Ethereum Blockchain (Fee Transfer)]
```

- **Institution Registration:** Institutions register and are recorded on the blockchain.
- **Course Management:** Institutions add and manage courses on the platform.
- **Student Registration:** Students register and are recorded on the blockchain.
- **Course Enrollment:** Students enroll in courses by paying the fee, which is securely transferred to the institution via the blockchain.

## Deployment Details



### Prerequisites

- **MetaMask:** A Web3-enabled browser extension like MetaMask to interact with the Ethereum network.
- **Remix IDE:** An online development environment for writing, deploying, and testing Solidity contracts.
- **Test Network:** An Ethereum test network (e.g., Ropsten, Rinkeby) for deploying the contract before going live.

### Deployment Steps

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-repository/EdTech-Integration-Hub.git
   ```

2. **Open Remix IDE:**
   - Navigate to [Remix IDE](https://remix.ethereum.org/).
   
3. **Create Solidity Contract:**
   - In Remix, create a new file named `EdTechIntegrationHub.sol`.
   - Copy and paste the Solidity code from the repository into this file.

4. **Compile the Contract:**
   - In Remix, go to the "Solidity Compiler" tab.
   - Select the Solidity compiler version `^0.8.0`.
   - Click "Compile EdTechIntegrationHub.sol".

5. **Deploy the Contract:**
   - In Remix, navigate to the "Deploy & Run Transactions" tab.
   - Select "Injected Web3" as the environment to deploy the contract using MetaMask.
   - Click "Deploy" to deploy the contract to the Ethereum network.

6. **Interacting with the Contract:**
   - After deployment, use the deployed contract interface in Remix to interact with the functions, such as registering institutions, adding courses, registering students, and enrolling in courses.

## Example Usage

### Register an Institution

1. Call the `registerInstitution(string _name)` function.
2. Provide the institution's name and click "transact".

### Add a Course

1. The registered institution calls the `addCourse(string _courseName, uint _fee)` function.
2. Provide the course name and fee in wei.

### Register a Student

1. Call the `registerStudent(string _studentName)` function.
2. Provide the student's name and click "transact".

### Enroll in a Course

1. The student calls the `enrollInCourse(uint _courseId)` function.
2. Provide the course ID and send the required fee.



## contact:
Name: Tanmay Dutta
Roll No: 21RISTCSE034
Phone No: 9365889675

# Deployment:

contract address 0x66CADC7879e7f9A28DB9BDccaefA16D7895cF05D
![image](https://github.com/user-attachments/assets/132a65f1-708f-4804-b0b1-224e8d741500)


