package user;

public class Basic {
	private int uid;
	private String phone;

	public Basic(int uid,String phone) {
		this.uid = uid;
		this.phone = phone;
	}
	public Basic() {
	}

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid=uid;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String p) {
		this.phone=p;
	}

}
