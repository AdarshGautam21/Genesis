pragma solidity ^0.5.0;
contract PatientData{
    strinf public name;
    uint public patientCount =0;
    mapping(uint=> Patient) public patients;

    function createPatient(string memory _name, uint _serviceCharge, string memory _passportNumber,
        string memory _fingerPrint, string memory _faceRecognise, string memory _country) public {
            require(bytes(_name).length >0);
            require(_serviceCharge>0);
            patientCount++;
            patients[patientCount] = Patient(patientsCount, _name,
                                    _serviceCharge, msg.sender, false,
                                    _passportNumber, _fingerprint, _faceRecognise, _country);
            

        emit PatientCreated(patientCount, _name, _serviceCharge, 
                            msg.sender, false, _passportNumber,
                            _fingerPrint, _faceRecognise, _country
                        );
        }
}