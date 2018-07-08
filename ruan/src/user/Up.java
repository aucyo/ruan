package user;

public class Up {
	private int uid;
	private String pwd;
	private int pow;

	public Up(int uid,String pwd,int pow) {
		this.uid = uid;
		this.pwd = pwd;
		this.pow = pow;
	}
	public Up() {
	}

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid=uid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String p) {
		this.pwd=p;
	}
	public int getPow() {
		return pow;
	}
	public void setPow(int pow) {
		this.pow=pow;
	}

}
