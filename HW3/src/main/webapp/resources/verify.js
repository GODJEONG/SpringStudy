
var ID, PW, PWconfirm, Name, Email, gender, SocialSecurityNumber;

function ID_Check() {
	ID = document.getElementById("ID").value;

	if (ID.length < 4 || ID.length > 12) {
		alert("ID는 4~12자리로 입력해야 합니다.");
		document.getElementById("ID").value = "";
		return false;
	}

	for (var i = 0; i < ID.length; i++) {
		if (!((ID.charCodeAt(i) >= 48 && ID.charCodeAt(i) <= 57) ||
			(ID.charCodeAt(i) >= 65 && ID.charCodeAt(i) <= 90) ||
			(ID.charCodeAt(i) >= 97 && ID.charCodeAt(i) <= 122))) {
			alert("ID는 영어 혹은 숫자로만 입력해야 합니다.");
			document.getElementById("ID").value = "";
			return false;
		}
	}
	return true;

}

function PW_Check() {
	PW = document.getElementById("PW").value;

	if (PW.length < 4 || PW.length > 12) {
		alert("비밀번호는 4~12자리로 입력해야 합니다.");
		document.getElementById("PW").value = "";
		return false;
	}

	for (var i = 0; i < PW.length; i++) {
		if (!((PW.charCodeAt(i) >= 48 && PW.charCodeAt(i) <= 57) ||
			(PW.charCodeAt(i) >= 65 && PW.charCodeAt(i) <= 90) ||
			(PW.charCodeAt(i) >= 97 && PW.charCodeAt(i) <= 122))) {
			alert("비밀번호는 영어 혹은 숫자로만 입력해야 합니다.");
			document.getElementById("PW").value = "";
			return false;
		}
	}
	return true;

}

function PW_DoubleCheck() {
	PWconfirm = document.getElementById("PWconfirm").value;

	if (PWconfirm == "") {
		alert("비밀번호 확인란이 입력되지 않습니다.");
		return false;
	}
	else if (PW != PWconfirm) {
		alert("두번 입력한 비밀번호가 서로 일치하지 않습니다.");
		document.getElementById("PW").value = "";
		document.getElementById("PWconfirm").value = "";
		return false;
	}
	return true;

}

function ID_PW_Check() {
	if (ID == PW) {
		alert("ID와 PW이 동일합니다 다르게 입력해주세요.");
		document.getElementById("ID").value = "";
		document.getElementById("PW").value = "";
		document.getElementById("PWconfirm").value = "";
		return false;
	}
	return true;
}

function Email_Check() {
	var Email = document.getElementById("Email").value;

	if (Email == "") {
		alert("이메일을 입력해주세요.");
		return false;
	}
	else if (!(Email.indexOf("@") != -1 && Email.indexOf("@") != 0 && Email.indexOf("@") != Email.length - 1 &&
		Email.indexOf(".") != -1 && (Email.indexOf(".") - Email.indexOf("@") > 1))) {
		alert("이메일 양식이 올바르지 않습니다.");
		document.getElementById("Email").value = "";
		return false;
	}
	return true;

}

function Name_Check() {
	Name = document.getElementById("Name").value;

	if (Name == "") {
		alert("이름을 입력해주세요.");
		return false;
	}
	return true;
}

function SocialSecurityNumber_Check() {
	SocialSecurityNumber = document.getElementById("SocialSecurityNumber").value;

	if (SocialSecurityNumber == "") {
		alert("주민번호를 입력해주세요!!");
		return false;
	}

	if (SocialSecurityNumber.length != 13) {
		alert("주민번호는 13자리입니다. 다시 입력해주세요!");
		return false;
	}

	gender = parseInt(SocialSecurityNumber.charAt(6));
	var sum = parseInt(SocialSecurityNumber.charAt(0)) * 2 +
		parseInt(SocialSecurityNumber.charAt(1)) * 3 +
		parseInt(SocialSecurityNumber.charAt(2)) * 4 +
		parseInt(SocialSecurityNumber.charAt(3)) * 5 +
		parseInt(SocialSecurityNumber.charAt(4)) * 6 +
		parseInt(SocialSecurityNumber.charAt(5)) * 7 +
		parseInt(SocialSecurityNumber.charAt(6)) * 8 +
		parseInt(SocialSecurityNumber.charAt(7)) * 9 +
		parseInt(SocialSecurityNumber.charAt(8)) * 2 +
		parseInt(SocialSecurityNumber.charAt(9)) * 3 +
		parseInt(SocialSecurityNumber.charAt(10)) * 4 +
		parseInt(SocialSecurityNumber.charAt(11)) * 5;
	var mod = sum % 11;

	var result = 11 - mod;

	if (result == 10) {
		result = 0;
	} else if (result == 11) {
		result = 1;
	}

	if (result != parseInt(SocialSecurityNumber.charAt(12))) {
		alert("주민번호가 올바르지 않습니다.");
		document.getElementById("SocialSecurityNumber").value = "";
		document.getElementById("Year").value = "";
		document.getElementById("Month").selectedIndex = 0;
		document.getElementById("Day").selectedIndex = 0;

		return false;
	}

	return true;
}


function gender_trans() {
	switch (gender) {
		case 1:
		case 2:
		case 5:
		case 6: return "19";
		case 3:
		case 4:
		case 7:
		case 8: return "20";
		default:
			return null;
	}

}

function Birthdate_Insert() {
	var year = gender_trans() + SocialSecurityNumber.slice(0, 2);
	var month = SocialSecurityNumber.slice(2, 4);
	var day = SocialSecurityNumber.slice(4, 6);

	console.log(year);
	console.log(month);
	console.log(day);

	document.getElementById("Year").value = year;
	document.getElementById("Month").selectedIndex = parseInt(month) - 1;
	document.getElementById("Day").selectedIndex = parseInt(day) - 1;
}


function Interest_Check() {
	var checkbox = document.getElementsByName("inter");
	var cnt = 0;
	for (var i = 0; i < checkbox.length; i++) {
		if (checkbox[i].checked) {
			cnt++
			break;
		}
	}
	if (cnt == 0) {
		alert("관심분야를 최소 1개는 선택해주세요.");
		return false;
	}
	return true;
}

function Intro_Check() {
	var Intro = document.getElementById("Intro").value;
	var len = Intro.length;

	if (len == "" || len < 10) {

		alert("자기소개는 10자 이상 입력하세요!");
		return false;
	}
	return true;
}


function verification() {
	if (ID_Check() && PW_Check() && PW_DoubleCheck() && ID_PW_Check() && Name_Check() && Email_Check() && Intro_Check()) {
		Birthdate_Insert();
		document.getElementById("join").submit();
	}

}
