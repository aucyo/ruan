package user;

public class Iuname {
	private int iid;
	private int uid;
	private String iname;
	private String sname;
	private String category;
	private String date;
	private double cprice;
	public Iuname(int iid,int uid,String iname,String sname,double cprice,String date,String category) {
		this.iid=iid;
		this.uid = uid;
		this.iname = iname;
		this.sname=sname;
		this.date = date;
		this.category = category;
		this.cprice = cprice;
	}
	public Iuname() {}
	
	public void setIid(int iid) {
		this.iid=iid;
	}
	public int getIid() {
		return iid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}

	public String getIname() {
		return iname;
	}
	public void setSname(String sname) {

		this.sname=sname;
	}
	public String getSname() {
		return sname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setCprice(double cprice) {
		this.cprice = cprice;
	}

	public double getCprice() {
		return cprice;
	}
}
