package user;


import java.sql.Blob;
import org.apache.struts2.components.File;


public class User {
	private int uid;
	private String sname;
	private String sex;
	private String qq;
	private String wc;
	private String birth;
	private String dsc;
	private String loc;
	private String icon;

	public User(int uid,String sex, String sname,String qq,String wc,String birth,String dsc,String loc,String icon) {
		this.uid = uid;
		this.qq = qq;
		this.sname = sname;
		this.wc = wc;
		this.birth = birth;
		this.sex = sex;
		this.dsc = dsc;
		this.loc=loc;
		this.icon = icon;
	}
	public User() {
	}

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public void setWc(String wc) {
		this.wc = wc;
	}

	public String getWc() {
		return wc;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getDsc() {
		return dsc;
	}

	public void setDsc(String dsc) {
		this.dsc = dsc;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

}
