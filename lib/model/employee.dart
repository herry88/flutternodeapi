class Employee {
  int employeeId;
  String employeeType;
  String employeeNik;
  String employeeName;
  String employeeBirthplace;
  String employeeBirthdate;
  String employeeSex;
  String employeeReligion;
  String employeeStatus;
  String employeeNationality;
  String employeeBloodtype;
  String employeeIdentityNo;
  String employeeDomicileadd;
  String employeeEmail;
  String employeeNpwp;
  String employeePtkp;
  String employeeBank;
  int fkPositionId;
  int fkPtkpId;
  String employeeBasicfee;
  String employeeHelperfee;
  int employeeIsboc;
  String employeeAccountno;
  String employeeAccountname;
  int employeeIsactive;
  int employeeSuspended;
  int employeeShift;
  int fkRegionalId;
  int fkDepartmentId;
  int fkBusunitId;
  String employeeStatusapv;
  int employeeApvposition;
  String employeeDatecreated;
  String employeeJoint;

  Employee(
      {this.employeeId,
      this.employeeType,
      this.employeeNik,
      this.employeeName,
      this.employeeBirthplace,
      this.employeeBirthdate,
      this.employeeSex,
      this.employeeReligion,
      this.employeeStatus,
      this.employeeNationality,
      this.employeeBloodtype,
      this.employeeIdentityNo,
      this.employeeDomicileadd,
      this.employeeEmail,
      this.employeeNpwp,
      this.employeePtkp,
      this.employeeBank,
      this.fkPositionId,
      this.fkPtkpId,
      this.employeeBasicfee,
      this.employeeHelperfee,
      this.employeeIsboc,
      this.employeeAccountno,
      this.employeeAccountname,
      this.employeeIsactive,
      this.employeeSuspended,
      this.employeeShift,
      this.fkRegionalId,
      this.fkDepartmentId,
      this.fkBusunitId,
      this.employeeStatusapv,
      this.employeeApvposition,
      this.employeeDatecreated,
      this.employeeJoint});

  Employee.fromJson(Map<String, dynamic> json) {
    employeeId = json['employee_id'];
    employeeType = json['employee_type'];
    employeeNik = json['employee_nik'];
    employeeName = json['employee_name'];
    employeeBirthplace = json['employee_birthplace'];
    employeeBirthdate = json['employee_birthdate'];
    employeeSex = json['employee_sex'];
    employeeReligion = json['employee_religion'];
    employeeStatus = json['employee_status'];
    employeeNationality = json['employee_nationality'];
    employeeBloodtype = json['employee_bloodtype'];
    employeeIdentityNo = json['employee_identity_no'];
    employeeDomicileadd = json['employee_domicileadd'];
    employeeEmail = json['employee_email'];
    employeeNpwp = json['employee_npwp'];
    employeePtkp = json['employee_ptkp'];
    employeeBank = json['employee_bank'];
    fkPositionId = json['fk_position_id'];
    fkPtkpId = json['fk_ptkp_id'];
    employeeBasicfee = json['employee_basicfee'];
    employeeHelperfee = json['employee_helperfee'];
    employeeIsboc = json['employee_isboc'];
    employeeAccountno = json['employee_accountno'];
    employeeAccountname = json['employee_accountname'];
    employeeIsactive = json['employee_isactive'];
    employeeSuspended = json['employee_suspended'];
    employeeShift = json['employee_shift'];
    fkRegionalId = json['fk_regional_id'];
    fkDepartmentId = json['fk_department_id'];
    fkBusunitId = json['fk_busunit_id'];
    employeeStatusapv = json['employee_statusapv'];
    employeeApvposition = json['employee_apvposition'];
    employeeDatecreated = json['employee_datecreated'];
    employeeJoint = json['employee_joint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['employee_id'] = this.employeeId;
    data['employee_type'] = this.employeeType;
    data['employee_nik'] = this.employeeNik;
    data['employee_name'] = this.employeeName;
    data['employee_birthplace'] = this.employeeBirthplace;
    data['employee_birthdate'] = this.employeeBirthdate;
    data['employee_sex'] = this.employeeSex;
    data['employee_religion'] = this.employeeReligion;
    data['employee_status'] = this.employeeStatus;
    data['employee_nationality'] = this.employeeNationality;
    data['employee_bloodtype'] = this.employeeBloodtype;
    data['employee_identity_no'] = this.employeeIdentityNo;
    data['employee_domicileadd'] = this.employeeDomicileadd;
    data['employee_email'] = this.employeeEmail;
    data['employee_npwp'] = this.employeeNpwp;
    data['employee_ptkp'] = this.employeePtkp;
    data['employee_bank'] = this.employeeBank;
    data['fk_position_id'] = this.fkPositionId;
    data['fk_ptkp_id'] = this.fkPtkpId;
    data['employee_basicfee'] = this.employeeBasicfee;
    data['employee_helperfee'] = this.employeeHelperfee;
    data['employee_isboc'] = this.employeeIsboc;
    data['employee_accountno'] = this.employeeAccountno;
    data['employee_accountname'] = this.employeeAccountname;
    data['employee_isactive'] = this.employeeIsactive;
    data['employee_suspended'] = this.employeeSuspended;
    data['employee_shift'] = this.employeeShift;
    data['fk_regional_id'] = this.fkRegionalId;
    data['fk_department_id'] = this.fkDepartmentId;
    data['fk_busunit_id'] = this.fkBusunitId;
    data['employee_statusapv'] = this.employeeStatusapv;
    data['employee_apvposition'] = this.employeeApvposition;
    data['employee_datecreated'] = this.employeeDatecreated;
    data['employee_joint'] = this.employeeJoint;
    return data;
  }
}