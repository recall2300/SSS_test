package first.common.logger;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoggerInterceptor extends HandlerInterceptorAdapter {
	// log객체 생성
	protected Log log = LogFactory.getLog(LoggerInterceptor.class);
	
	// 전처리기
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		if(log.isDebugEnabled()){
			log.debug("======================================          START         ======================================");
			log.debug(" Request URI \t	" + request.getRequestURI());
			// .getRequestURI()를 통해 현재 호출된 URI가 무엇인지 출력.
		}
		return super.preHandle(request, response, handler);
	}
	
	// 후처리기
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception{
		if(log.isDebugEnabled()){
			log.debug("======================================           END          ======================================\n");
		}
	}

}
