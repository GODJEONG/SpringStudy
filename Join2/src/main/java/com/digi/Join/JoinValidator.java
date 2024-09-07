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
			System.out.println("ID�� �ʼ� �Է� �׸��Դϴ�.");
			errors.rejectValue("id", "id.empty", "ID�� �ʼ� �Է� �׸��Դϴ�.");
		} else if (join.getId().length() < 4 || join.getId().length() > 12) {
			System.out.println("ID�� 4~12�ڸ��� �Է��ؾ� �մϴ�.");
			errors.rejectValue("id", "id.length", "ID�� 4~12�ڸ��� �Է��ؾ� �մϴ�.");
		} else {
			for (int i = 0; i < join.getId().length(); i++) {
				char ch = join.getId().charAt(i);
				if (!Character.isLetterOrDigit(ch)) {
					System.out.println("ID�� ���� Ȥ�� ���ڷθ� �Է��ؾ� �մϴ�.");
					errors.rejectValue("id", "id.invalid", "ID�� ���� Ȥ�� ���ڷθ� �Է��ؾ� �մϴ�.");
					break;
				}
			}
		}

		if (join.getPw() == null || join.getPw().trim().isEmpty()) {
			System.out.println("pw�� �ʼ� �Է� �׸��Դϴ�.");
			errors.rejectValue("pw", "pw.empty", "��й�ȣ�� �ʼ� �Է� �׸��Դϴ�.");
		} else if (join.getPw().length() < 4 || join.getPw().length() > 12) {
			System.out.println("pw�� 4~12�ڸ��� �Է��ؾ� �մϴ�.");
			errors.rejectValue("pw", "pw.length", "��й�ȣ�� 4~12�ڸ��� �Է��ؾ� �մϴ�.");
		} else {
			for (int i = 0; i < join.getPw().length(); i++) {
				char ch = join.getPw().charAt(i);
				if (!Character.isLetterOrDigit(ch)) {
					System.out.println("��й�ȣ�� ���� Ȥ�� ���ڷθ� �Է��ؾ� �մϴ�.");
					errors.rejectValue("pw", "pw.invalid", "��й�ȣ�� ���� Ȥ�� ���ڷθ� �Է��ؾ� �մϴ�.");
					break;
				}
			}
		}

		if (join.getpwConfirm() == null || join.getpwConfirm().trim().isEmpty()) {
			System.out.println("��й�ȣ Ȯ�ζ��� �Էµ��� �ʾҽ��ϴ�.");
			errors.rejectValue("pwConfirm", "pwConfirm.empty", "��й�ȣ Ȯ�ζ��� �Էµ��� �ʾҽ��ϴ�.");
		} else if (!join.getPw().equals(join.getpwConfirm())) {
			System.out.println("�� �� �Է��� ��й�ȣ�� ���� ��ġ���� �ʽ��ϴ�.");
			errors.rejectValue("pw", "pw.mismatch", "�� �� �Է��� ��й�ȣ�� ���� ��ġ���� �ʽ��ϴ�.");
			errors.rejectValue("pwConfirm", "pwConfirm.mismatch", "�� �� �Է��� ��й�ȣ�� ���� ��ġ���� �ʽ��ϴ�.");
		}

		if (join.getId() != null && join.getPw() != null && join.getId().equals(join.getPw())) {
			errors.rejectValue("id", "id.pw.same", "ID�� PW�� �����մϴ�. �ٸ��� �Է����ּ���.");
			System.out.println("ID�� PW�� �����մϴ�. �ٸ��� �Է����ּ���.");
			
		}

		// �̸��� ��ȿ�� �˻�
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.empty", "�̸����� �Է����ּ���.");
		if (join.getEmail() != null && !join.getEmail().matches("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$")) {
			errors.rejectValue("email", "email.invalid", "�̸��� ����� �ùٸ��� �ʽ��ϴ�.");
			System.out.println("�̸��� ����� �ùٸ��� �ʽ��ϴ�.");		
		}

		// �̸� ��ȿ�� �˻�
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "name.empty", "�̸��� �Է����ּ���.");

		// �ֹι�ȣ ��ȿ�� �˻�
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "socialsecuritynumber", "ssn.empty", "�ֹι�ȣ�� �Է����ּ���.");
		if (join.getSocialsecuritynumber() != null) {
			String ssn = join.getSocialsecuritynumber();
			if (ssn.length() != 13) {
				errors.rejectValue("socialsecuritynumber", "ssn.length", "�ֹι�ȣ�� 13�ڸ��Դϴ�. �ٽ� �Է����ּ���!");
				System.out.println("�ֹι�ȣ�� 13�ڸ��Դϴ�. �ٽ� �Է����ּ���!");
			} else {
				int sum = 0;
				int[] weights = { 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5 };
				for (int i = 0; i < 12; i++) {
					sum += Character.getNumericValue(ssn.charAt(i)) * weights[i];
				}
				int mod = (11 - (sum % 11)) % 10;
				if (mod != Character.getNumericValue(ssn.charAt(12))) {
					errors.rejectValue("socialsecuritynumber", "ssn.invalid", "�ֹι�ȣ�� �ùٸ��� �ʽ��ϴ�.");
					System.out.println("�ֹι�ȣ�� �ùٸ��� �ʽ��ϴ�.");
				}
			}
		}

		// �ڱ�Ұ� ��ȿ�� �˻�
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "intro", "intro.empty", "�ڱ�Ұ��� 10�� �̻� �Է��ϼ���!");
		if (join.getIntro() != null && join.getIntro().length() < 10) {
			errors.rejectValue("intro", "intro.short", "�ڱ�Ұ��� 10�� �̻� �Է��ϼ���!");
			System.out.println("�ڱ�Ұ��� 10�� �̻� �Է��ϼ���!");
		}

		List<String> interests = join.getInter();
		if (interests == null || interests.isEmpty()) {
			errors.rejectValue("inter", "inter.empty", "���ɺо߸� �ּ� 1���� �������ּ���.");
			System.out.println("���ɺо߸� �ּ� 1���� �������ּ���.");
		}

		if (join.getSocialsecuritynumber() != null) {
			String ssn = join.getSocialsecuritynumber();
			if (ssn.length() == 13) {
				int genderCode = Character.getNumericValue(ssn.charAt(6));
				String yearPrefix = genderTrans(genderCode);
				String year = yearPrefix + ssn.substring(0, 2);
				String month = ssn.substring(2, 4);
				String day = ssn.substring(4, 6);

				// ������� ����
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
