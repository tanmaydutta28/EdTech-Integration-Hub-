// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EdTechIntegrationHub {
    struct Institution {
        string name;
        address institutionAddress;
        bool isRegistered;
    }

    struct Course {
        string courseName;
        uint courseId;
        address institutionAddress;
        uint fee;
        bool isAvailable;
    }

    struct Student {
        string studentName;
        address studentAddress;
        mapping(uint => bool) enrolledCourses;
    }

    mapping(address => Institution) public institutions;
    mapping(uint => Course) public courses;
    mapping(address => Student) public students;

    uint public courseCount;

    modifier onlyRegisteredInstitution() {
        require(institutions[msg.sender].isRegistered, "Not a registered institution");
        _;
    }

    function registerInstitution(string memory _name) public {
        require(!institutions[msg.sender].isRegistered, "Already registered");
        institutions[msg.sender] = Institution(_name, msg.sender, true);
    }

    function addCourse(string memory _courseName, uint _fee) public onlyRegisteredInstitution {
        courseCount++;
        courses[courseCount] = Course(_courseName, courseCount, msg.sender, _fee, true);
    }

    function registerStudent(string memory _studentName) public {
        // Initialize the Student struct and set its fields manually
        Student storage student = students[msg.sender];
        student.studentName = _studentName;
        student.studentAddress = msg.sender;
    }

    function enrollInCourse(uint _courseId) public payable {
        Course memory course = courses[_courseId];
        require(course.isAvailable, "Course not available");
        require(msg.value >= course.fee, "Insufficient fee");

        students[msg.sender].enrolledCourses[_courseId] = true;

        payable(course.institutionAddress).transfer(msg.value);
    }

    function getStudentEnrolledCourses(address _studentAddress, uint _courseId) public view returns (bool) {
        return students[_studentAddress].enrolledCourses[_courseId];
    }
}
