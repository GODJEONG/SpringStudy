package kr.soft.study;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class LogAop {

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
			System.out.println(signatureStr + "경과시간 : " + (et - st));
		}
			
	}
	
	
	public void beforeAdvice(JoinPoint joinPoint) {
		
		
		System.out.println("beforeAdvice()");
	}
	
	public void afterReturningAdvice() {
		System.out.println("afterReturningAdvice()");
	}
	
	public void afterThrowingAdvice() {
		System.out.println("afterThrowingAdvice()");
	}
	
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
