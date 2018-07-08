package user;

public class ItU {
	private int ituid;
	private int iid;
	private int cuser_id;
	private String comment;
	private String cdate;

	public ItU(int ituid,int iid,int cuser_id,String comment,String cdate) {
		this.ituid = ituid;
		this.iid = iid;
		this.cuser_id = cuser_id;
		this.comment = comment;
		this.cdate = cdate;
	}
	public ItU() {
	}

	public int getItuid() {
		return ituid;
	}
	public void setItuid(int ituid) {
		this.ituid=ituid;
	}
	public int getIid() {
		return iid;
	}
	public void setIid(int iid) {
		this.iid=iid;
	}
	public int getCuser_id() {
		return cuser_id;
	}
	public void setCuser_id(int cuser_id) {
		this.cuser_id=cuser_id;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment=comment;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate=cdate;
	}
}
