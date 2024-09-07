
var ID, PW, PWconfirm, Name, Email, gender;

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
	if (ID_Check() && PW_Check() && PW_DoubleCheck() && ID_PW_Check() && Name_Check()  && Email_Check() && Intro_Check()) {
		document.getElementById("join").submit();
	}

}
