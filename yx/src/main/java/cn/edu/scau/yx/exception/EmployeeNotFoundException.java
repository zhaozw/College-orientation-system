package cn.edu.scau.yx.exception;

/**
 * 查询用户信息时，无法找到异常
 * @author stupidwolf
 *
 */
public class EmployeeNotFoundException extends RuntimeException{

	private static final long serialVersionUID = 1242853624095442581L;

	public EmployeeNotFoundException() {
		super();
	}

	public EmployeeNotFoundException(String arg0) {
		super(arg0);
	}
	
}
