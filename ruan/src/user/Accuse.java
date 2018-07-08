package user;

public class Accuse {
	private int aid;
	private int user1_id;
	private int user2_id;
	private String accusement;
	private String adate;

	public Accuse(int aid,int user1_id,int user2_id,String accusement,String adate) {
		this.aid = aid;
		this.user1_id = user1_id;
		this.user2_id = user2_id;
		this.accusement = accusement;
		this.adate = adate;
	}
	public Accuse() {
	}

	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid=aid;
	}
	public int getUser1_id() {
		return user1_id;
	}
	public void setUser1_id(int i) {
		this.user1_id=i;
	}
	public int getUser2_id() {
		return user2_id;
	}
	public void setUser2_id(int i) {
		this.user2_id=i;
	}
	public String getAccusement() {
		return accusement;
	}
	public void setAccusement(String p) {
		this.accusement=p;
	}
	public String getAdate() {
		return adate;
	}
	public void setAdate(String p) {
		this.adate=p;
	}
}
