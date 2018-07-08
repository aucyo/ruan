package user;

public class UtU {
	private int utuid;
	private int user1_id;
	private int user2_id;
	private String comment;
	private String cdate;

	public UtU(int utuid,int user1_id,int user2_id,String comment,String cdate) {
		this.utuid = utuid;
		this.user1_id = user1_id;
		this.user2_id = user2_id;
		this.comment = comment;
		this.cdate = cdate;
	}
	public UtU() {
	}

	public int getUtuid() {
		return utuid;
	}
	public void setUtuid(int utuid) {
		this.utuid=utuid;
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
	public String getComment() {
		return comment;
	}
	public void setComment(String p) {
		this.comment=p;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String p) {
		this.cdate=p;
	}
}
