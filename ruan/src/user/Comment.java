package user;

public class Comment {
	private int cuser_id;
	private String sname;
	private String date;
	private String comment;
	public Comment(int cuser_id,String sname,String date,String comment) {
		this.cuser_id=cuser_id;
		this.sname =sname ;
		this.date =date;
		this.comment=comment ;
	}
	public Comment(String sname,String date,String comment) {
		this.sname =sname ;
		this.date =date;
		this.comment=comment ;
	}

	public Comment(){
	}
	public int getCuser_id(){
		return cuser_id;
	}
	public void setCuser_idid(int cuser_id){
		this.cuser_id = cuser_id;
	}
	public String getSname(){
		return sname;
	}
	public void setSname(String sname){
		this.sname = sname;
	}
	public String getDate(){
		return date;
	}
	public void setDate(String date){
		this.date = date;
	}
	public String getComment(){
		return comment;
	}
	public void setComment(String comment){
		this.comment = comment;
	}
}
