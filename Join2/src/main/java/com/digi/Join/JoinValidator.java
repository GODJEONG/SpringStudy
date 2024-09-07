package com.digi.Join;

import java.util.List;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.digi.Join.Form.Join;

public class JoinValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return Join.class.isAssignableFrom(arg0);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		System.out.println("validate()");
		Join join = (Join) obj;

		if (join.getId() == null || join.getId().trim().isEmpty()) {
			System.out.println("ID는 필수 입력 항목입니다.");
			errors.rejectValue("id", "id.empty", "ID는 필수 입력 항목입니다.");
		} else if (join.getId().length() < 4 || join.getId().length() > 12) {
			System.out.println("ID는 4~12자리로 입력해야 합니다.");
			errors.rejectValue("id", "id.length", "ID는 4~12자리로 입력해야 합니다.");
		} else {
			for (int i = 0; i < join.getId().length(); i++) {
				char ch = join.getId().charAt(i);
				if (!Character.isLetterOrDigit(ch)) {
					System.out.println("ID는 영어 혹은 숫자로만 입력해야 합니다.");
					errors.rejectValue("id", "id.invalid", "ID는 영어 혹은 숫자로만 입력해야 합니다.");
					break;
				}
			}
		}

		if (join.getPw() == null || join.getPw().trim().isEmpty()) {
			System.out.println("pw는 필수 입력 항목입니다.");
			errors.rejectValue("pw", "pw.empty", "비밀번호는 필수 입력 항목입니다.");
		} else if (join.getPw().length() < 4 || join.getPw().length() > 12) {
			System.out.println("pw는 4~12자리로 입력해야 합니다.");
			errors.rejectValue("pw", "pw.length", "비밀번호는 4~12자리로 입력해야 합니다.");
		} else {
			for (int i = 0; i < join.getPw().length(); i++) {
				char ch = join.getPw().charAt(i);
				if (!Character.isLetterOrDigit(ch)) {
					System.out.println("비밀번호는 영어 혹은 숫자로만 입력해야 합니다.");
					errors.rejectValue("pw", "pw.invalid", "비밀번호는 영어 혹은 숫자로만 입력해야 합니다.");
					break;
				}
			}
		}

		if (join.getpwConfirm() == null || join.getpwConfirm().trim().isEmpty()) {
			System.out.println("비밀번호 확인란이 입력되지 않았습니다.");
			errors.rejectValue("pwConfirm", "pwConfirm.empty", "비밀번호 확인란이 입력되지 않았습니다.");
		} else if (!join.getPw().equals(join.getpwConfirm())) {
			System.out.println("두 번 입력한 비밀번호가 서로 일치하지 않습니다.");
			errors.rejectValue("pw", "pw.mismatch", "두 번 입력한 비밀번호가 서로 일치하지 않습니다.");
			errors.rejectValue("pwConfirm", "pwConfirm.mismatch", "두 번 입력한 비밀번호가 서로 일치하지 않습니다.");
		}

		if (join.getId() != null && join.getPw() != null && join.getId().equals(join.getPw())) {
			errors.rejectValue("id", "id.pw.same", "ID와 PW이 동일합니다. 다르게 입력해주세요.");
			System.out.println("ID와 PW이 동일합니다. 다르게 입력해주세요.");
			
		}

		// 이메일 유효성 검사
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.empty", "이메일을 입력해주세요.");
		if (join.getEmail() != null && !join.getEmail().matches("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$")) {
			errors.rejectValue("email", "email.invalid", "이메일 양식이 올바르지 않습니다.");
			System.out.println("이메일 양식이 올바르지 않습니다.");		
		}

		// 이름 유효성 검사
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "name.empty", "이름을 입력해주세요.");

		// 주민번호 유효성 검사
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "socialsecuritynumber", "ssn.empty", "주민번호를 입력해주세요.");
		if (join.getSocialsecuritynumber() != null) {
			String ssn = join.getSocialsecuritynumber();
			if (ssn.length() != 13) {
				errors.rejectValue("socialsecuritynumber", "ssn.length", "주민번호는 13자리입니다. 다시 입력해주세요!");
				System.out.println("주민번호는 13자리입니다. 다시 입력해주세요!");
			} else {
				int sum = 0;
				int[] weights = { 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5 };
				for (int i = 0; i < 12; i++) {
					sum += Character.getNumericValue(ssn.charAt(i)) * weights[i];
				}
				int mod = (11 - (sum % 11)) % 10;
				if (mod != Character.getNumericValue(ssn.charAt(12))) {
					errors.rejectValue("socialsecuritynumber", "ssn.invalid", "주민번호가 올바르지 않습니다.");
					System.out.println("주민번호가 올바르지 않습니다.");
				}
			}
		}

		// 자기소개 유효성 검사
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "intro", "intro.empty", "자기소개는 10자 이상 입력하세요!");
		if (join.getIntro() != null && join.getIntro().length() < 10) {
			errors.rejectValue("intro", "intro.short", "자기소개는 10자 이상 입력하세요!");
			System.out.println("자기소개는 10자 이상 입력하세요!");
		}

		List<String> interests = join.getInter();
		if (interests == null || interests.isEmpty()) {
			errors.rejectValue("inter", "inter.empty", "관심분야를 최소 1개는 선택해주세요.");
			System.out.println("관심분야를 최소 1개는 선택해주세요.");
		}

		if (join.getSocialsecuritynumber() != null) {
			String ssn = join.getSocialsecuritynumber();
			if (ssn.length() == 13) {
				int genderCode = Character.getNumericValue(ssn.charAt(6));
				String yearPrefix = genderTrans(genderCode);
				String year = yearPrefix + ssn.substring(0, 2);
				String month = ssn.substring(2, 4);
				String day = ssn.substring(4, 6);

				// 생년월일 설정
				join.setYear(year);
				join.setMonth(month);
				join.setDay(day);
			}
		}

	}

	private String genderTrans(int genderCode) {
		switch (genderCode) {
		case 1:
		case 2:
		case 5:
		case 6:
			return "19";
		case 3:
		case 4:
		case 7:
		case 8:
			return "20";
		default:
			return null;
		}
	}
	
	
}
