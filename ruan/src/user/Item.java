package user;

public class Item {
	private int iid;
	private int uid;
	private String iname;
	private String category;
	private String date;
	private String dsc;
	private double oprice;
	private double cprice;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String image5;
	private String image6;

	public Item(int iid,String iname,int uid,double oprice, String category,String date,double cprice,String image1,String image2,String image3,String image4,String image5,String image6) {
		this.iid = iid;
		this.uid = uid;
		this.iname = iname;
		this.date = date;
		this.category = category;
		this.cprice = cprice;
		this.oprice = oprice;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.image5 = image5;
		this.image6 = image6;
	}
	public Item() {
	}

	public int getIid() {
		return iid;
	}

	public void setIid(int iid) {
		this.iid = iid;
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


	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDsc() {
		return dsc;
	}
	public void setDsc(String dsc) {
		this.dsc = dsc;
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

	public double getOprice() {
		return oprice;
	}

	public void setOprice( double oprice) {
		this.oprice = oprice;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public String getImage4() {
		return image4;
	}

	public void setImage4(String image4) {
		this.image4 = image4;
	}
	public String getImage5() {
		return image5;
	}
	public void setImage5(String image5) {
		this.image5 = image5;
	}
	public String getImage6() {
		return image6;
	}
	public void setImage6(String image6) {
		this.image6 = image6;
	}
}
