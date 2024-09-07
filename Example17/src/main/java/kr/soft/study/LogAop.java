package kr.soft.study;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class LogAop {

// EXEUCTION
//	@Pointcut("execution(public void get*(..))") //  public void �� get�޼ҵ�
//  @Pointcut("execution(* kr.soft.study.*.*())") //  kr.soft.study ��Ű���� �Ķ���Ͱ����� ��� �޼ҵ�
//	@Pointcut("execution(* kr.soft.study..*.*())") 
	// ��Ű�� & ���� ��Ű���� ������Ͱ� ���� ��� �޼ҵ�
//	@Pointcut("execution(* kr.soft.study.Worker.*())") // kr.soft.study.Worker ���� ��� �޼ҵ�

	
// within
	
//	@Pointcut("within(kr.soft.study.*)") // kr.soft.study ��Ű�� ���� ��� �޼ҵ�
//	@Pointcut("within(kr.soft.study..*)") // kr.soft.study ��Ű�� �� ���� ��Ű�� ���� ��� �޼ҵ�
//	@Pointcut("within(kr.soft.study.Worker)") // kr.soft.study.Worker ���� ��� �޼ҵ�

	
// bean
	
//	@Pointcut("bean(student)") // student �󿡸� ����
//	@Pointcut("bean(*ker)") // ~ker으로 끝나는 빈에만 적용
	
	
//	@Pointcut("within(kr.soft.study.*)")

	@Pointcut("bean(*ker)")	
	private void pointcutMethod() {
	}
	
	@Pointcut("bean(*ent)")	
	private void pointcutMethod2() {
	}
	
	//@Pointcut("bean(*ker)")	
	@Around("pointcutMethod()")
	public Object loggerAop(ProceedingJoinPoint joinpoint) throws Throwable {
		
		String signatureStr = joinpoint.getSignature().toLongString();
		System.out.println(signatureStr + "is start.");
		long st = System.currentTimeMillis();

		try {
			Object obj = joinpoint.proceed();
			return obj;
		} finally {
			long et = System.currentTimeMillis();
			System.out.println(signatureStr + "is finished.");
			System.out.println(signatureStr + "����ð� : " + (et - st));
		}
			
	}
	
	@Before("pointcutMethod2()")
	public void beforeAdvice(JoinPoint joinPoint) {
		System.out.println("beforeAdvice()");
	}
	@AfterReturning("pointcutMethod()")
	public void afterReturningAdvice() {
		System.out.println("afterReturningAdvice()");
	}
	@AfterThrowing("pointcutMethod()")
	public void afterThrowingAdvice() {
		System.out.println("afterThrowingAdvice()");
	}
	
	@After("pointcutMethod()")
	public void afterAdvice() {
		System.out.println("afterAdvice()");
	}
	
	
//	public Object loggerAop(ProceedingJoinPoint joinpoint) throws Throwable {
//		System.out.println("hello");
//
//		Object obj = joinpoint.proceed();
//		try {
//			return obj;
//
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//
//		return obj;
//		
//	}

}
