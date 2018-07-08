package user.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import user.dao.*;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import user.Accuse;
import user.Basic;
import user.Comment;
import user.ItU;
import user.Item;
import user.Iuname;
import user.Up;
import user.User;
import user.UtU;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserDAO ud = new UserDAO();
	
	String phone;
	String searchType;
	String searchTxt;
	String isFirst;
	
	Basic phoneCheck;
	Up loginCheck;
	Up logupC;
	User zcuser;
	List<Iuname> searchItems;
	List<User> searchUsers;
	List<ItU> itus;
	ItU itu;
	List<Comment> comments;
	List<Accuse> aaccuses;
	File icon;
	String url;
	List<String> imgs;
	File image1;
	File image2;
	File image3;
	File image4;
	File image5;
	File image6;
	
	Basic myBasic;
	Up myUp;
	User myUser;
	List<Item> myItems;
	Item myItem=new Item();
	List<UtU> myUtUs;
	
	Basic hisBasic;
	User hisUser;
	List<Item> hisItems;
	Item hisItem=new Item();
	List<UtU> hisUtUs;
	UtU hisUtU;
	Accuse hisAccuse;
	
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String p) {
		this.phone=p;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType=searchType;
	}
	public String getSearchTxt(){
		return searchTxt;
	}
	public void setSearchTxt(String s) {
		this.searchTxt=s ;
	}
	public String getIsFirst() {
		return isFirst;
	}
	public void setIsFirst(String isFirst) {
		this.isFirst=isFirst ;
	}
	public Basic getPhoneCheck() {
		return phoneCheck;
	}
	public void setPhoneCheck(Basic phoneCheck) {
		this.phoneCheck = phoneCheck;
	}
	public Up getLoginCheck() {
		return loginCheck;
	}
	public void setLoginCheck(Up loginCheck) {
		this.loginCheck = loginCheck;
	}
	public Up getLogupC() {
		return logupC;
	}
	public void setLogupC(Up logupC) {
		this.logupC = logupC;
	}
	public User getZcuser() {
		return zcuser;
	}
	public void setZcuser(User Zcuser) {
		this.zcuser = Zcuser;
	}
	public List<Iuname> getSearchItems() {
		return searchItems;
	}
	public void setSearchItems(List<Iuname> searchItems) {
		this.searchItems = searchItems;
	}
	public List<User> getSearchUsers() {
		return searchUsers;
	}
	public void setSearchUsers(List<User> searchUsers) {
		this.searchUsers = searchUsers;
	}
	public List<ItU> getItU() {
		return itus;
	}
	public void setItU(List<ItU> itus) {
		this.itus = itus;
	}
	public ItU getItu() {
		return itu;
	}
	public void setItu(ItU itu) {
		this.itu = itu;
	}
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	public List<Accuse> getAaccuses() {
		return aaccuses;
	}
	public void setAaccuses(List<Accuse> aaccuses) {
		this.aaccuses = aaccuses;
	}
	public List<String> getImgs() {
		return imgs;
	}
	public void setImgs(List<String> imgs) {
		this.imgs = imgs;
	}
//----------------------- my***
	public Basic getMyBasic() {
		return myBasic;
	}
	public void setMyBasic(Basic myBasic) {
		this.myBasic = myBasic;
	}
	public Up getMyUp() {
		return myUp;
	}
	public void setMyUp(Up myUp) {
		this.myUp = myUp;
	}
	public User getMyUser() {
		return myUser;
	}
	public void setMyUser(User myUser) {
		this.myUser = myUser;
	}
	public List<Item> getMyItems() {
		return myItems;
	}
	public void setMyItems(List<Item> myItems) {
		this.myItems = myItems;
	}
	public Item getMyItem() {
		return myItem;
	}
	public void setMyItem(Item myItem) {
		this.myItem = myItem;
	}
	public List<UtU> getMyUtUs() {
		return myUtUs;
	}
	public void setMyUtUs(List<UtU> myUtUs) {
		this.myUtUs = myUtUs;
	}
	//------------------hisxxx
	public Basic getHisBasic() {
		return hisBasic;
	}
	public void setHisBasic(Basic hisBasic) {
		this.hisBasic = hisBasic;
	}
	public User getHisUser() {
		return hisUser;
	}
	public void setHisUser(User hisUser) {
		this.hisUser = hisUser;
	}
	public List<Item> getHisItems() {
		return hisItems;
	}
	public void setHisItems(List<Item> hisItems) {
		this.hisItems = hisItems;
	}
	public Item getHisItem() {
		return hisItem;
	}
	public void setHisItem(Item hisItem) {
		this.hisItem = hisItem;
	}
	public List<UtU> getHisUtUs() {
		return hisUtUs;
	}
	public void setHisUtUs(List<UtU> hisUtUs) {
		this.hisUtUs = hisUtUs;
	}
	public UtU getHisUtU() {
		return hisUtU;
	}
	public void setHisUtU(UtU hisUtU) {
		this.hisUtU = hisUtU;
	}
	public Accuse getHisAccuse() {
		return hisAccuse;
	}
	public void setHisAccuse(Accuse hisAccuse) {
		this.hisAccuse = hisAccuse;
	}
	public File getIcon() {
		return icon;
	}
	public void setIcon(File icon) {
		this. icon = icon;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this. url = url;
	}
	public File getImage1() {
		return image1;
	}
	public void setImage1(File image1) {
		this. image1 = image1;
	}
	public File getImage2() {
		return image2;
	}
	public void setImage2(File image2) {
		this. image2 = image2;
	}
	public File getImage3() {
		return image3;
	}
	public void setImage3(File image3) {
		this. image3 = image3;
	}
	public File getImage4() {
		return image4;
	}
	public void setImage4(File image4) {
		this. image4 = image4;
	}
	public File getImage5() {
		return image5;
	}
	public void setImage5(File image5) {
		this. image5 = image5;
	}
	public File getImage6() {
		return image6;
	}
	public void setImage6(File image6) {
		this. image6 = image6;
	}
	/*
	public  get() {
		return ;
	}
	public void set() {
		this. = ;
	}
	 **/
	
	//------------------------------------------------------
	public String login() {
		return "loginjsp";
	}
	public String logup() {
		return "logupjsp";
	}
	public String pwdCheck() throws IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try (Connection c = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ruan?characterEncoding=UTF-8",
				"root", "cy2432121"); Statement s = c.createStatement();) {
			//*********************************
			
			
			
			String pwd = loginCheck.getPwd();//"1";//
			String phone= phoneCheck.getPhone();//"1";//
			
			String sql = "select up.uid from basic,up where basic.phone = '" + phone + "' and up.pwd = '" + pwd + "' and basic.uid=up.uid";
			// 执行查询语句，并把结果集返回给ResultSet
			ResultSet rs = s.executeQuery(sql);
			if (rs.next()) {//已注册过
				int myId=ud.searchId(phone);
				myBasic=ud.searchBasic(myId);
				myUp=ud.searchUp(myId);
				if(myUp.getPow()<0) {
					return "reject";
				}else if(myUp.getPow()==1) {
			    	aaccuses=ud.showAccuses();
					return "admin";
				}
				myUser=ud.searchUser(myId);
				comments=ud.searchUtUUser2_ids(myId);
				return "y";
			}
			else {
				return "n";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "n";
		}
    }
	public String logupsave() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try (Connection c = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ruan?characterEncoding=UTF-8",
				"root", "cy2432121"); Statement s = c.createStatement();) {		
			
			String phone = phoneCheck.getPhone();
			String sql = "select * from basic where basic.phone = '" + phone +"'";
			// 执行查询语句，并把结果集返回给ResultSet
			ResultSet rs = s.executeQuery(sql);
			if (rs.next()) {//已注册过
				return "n";
			}
			ud.addbasic(phoneCheck);
			ud.addup(logupC);
			ud.adduser(zcuser);
			return "y";
			
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "n";
		}		
	}
    public String myIssues() {
    	int uid=myBasic.getUid();
    	myItems=ud.showOnesItems(uid);
    	if(myItem==null) {
    		setIsFirst("myIssues");
    	}else {
    		int iid=myItem.getIid();
    		myItem=ud.showSingleItem(iid);
    		
    	}
    	return "myIssuesjsp";
	}
    public String myInform(){
    	int myId=myBasic.getUid();
		myBasic=ud.searchBasic(myId);
		myUp=ud.searchUp(myId);
		myUser=ud.searchUser(myId);
    	myUtUs=ud.searchUtUs(myId);
		comments=ud.searchUtUUser2_ids(myId);
		
    	return "myInformjsp";
	}
    public String accuses(){
    	aaccuses=ud.showAccuses();
    	return "adminjsp";
	}
    public String rejects(){
    	aaccuses=ud.showRejects();
    	return "admin2jsp";
	}
    public String doReject(){
    	int uid=hisBasic.getUid();
    	myUp=ud.searchUp(uid);
    	myUp.setPow(-1);
    	ud.doReject(myUp);
		
    	return "adminjsp";
	}
    public String undoReject(){
    	int uid=hisBasic.getUid();
    	myUp=ud.searchUp(uid);
    	myUp.setPow(0);
    	ud.undoReject(myUp,uid);
    	return "admin2jsp";
	}
    public String updateMyInform(){
    	int myId=myBasic.getUid();
    	ud.updateMyInform(myUp,myUser);
		myBasic=ud.searchBasic(myId);
		myUp=ud.searchUp(myId);
		myUser=ud.searchUser(myId);
    	myUtUs=ud.searchUtUs(myId);
    	comments=ud.searchUtUUser2_ids(myId);
		
    	return "myInformjsp";
	}
    public String updateItem(){
    	int uid=myBasic.getUid();
    	ud.updateItem(myItem);
		myBasic=ud.searchBasic(uid);
    	myItems=ud.showOnesItems(uid);
		
    	return "myIssuesjsp";
	}
    public String hisInform(){
    	int myId=myBasic.getUid();
		myBasic=ud.searchBasic(myId);
    	int hisId=hisBasic.getUid();
		hisBasic=ud.searchBasic(hisId);
		hisUser=ud.searchUser(hisId);
		hisUtUs=ud.searchUtUs(hisId);
		comments=ud.searchUtUUser2_ids(hisId);
		
    	return "hisInformjsp";
	}
    public String search() {
    	int myId=myBasic.getUid();
		myBasic=ud.searchBasic(myId);
    	if(searchType.equals("byuser")) {
    		searchUsers=ud.showUsersBySname(searchTxt);
        	return "searchUserjsp";
    	}
    	if(searchType.equals("byloc")) {
    		searchUsers=ud.showItemsByLoc(searchTxt);
        	return "searchUserjsp";
    	}
    	if(searchType.equals("bycat")) {
    		searchItems=ud.showItemsByCategory(searchTxt);
        	return "searchItemjsp";
    	}
    	if(searchType.equals("byitem")) {
    		searchItems=ud.showItemsByIname(searchTxt);
        	return "searchItemjsp";
    	}return "searchItemjsp";
    }
    public String issuePage(){
    	int uid=myBasic.getUid();
		myBasic=ud.searchBasic(uid);
    	
    	return "issuePagejsp";
	}
    public String commitIssue() throws IOException{
    	int uid=myBasic.getUid();
    	Date day=new Date();    
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
    	myItem.setDate(df.format(day));
    	int iid=ud.getMaxIId()+1;
    	if(image1!=null) {
		String ur="D:/J2EE/workspace1/ruan/WebContent/user/image/"+iid+"_image1.jpg";
		File f= new File(ur);
		if(!f.exists()) {
			try {
				f.getParentFile().mkdirs();//构建文件夹
				f.createNewFile();//构建文件
			} catch (IOException e) {
				e.printStackTrace();
			}
			}
	    	FileInputStream ins = new FileInputStream(image1);
	        FileOutputStream out = new FileOutputStream(f);
	        byte[] b = new byte[1024];
	        int n=0;
	        while((n=ins.read(b))!=-1){
	            out.write(b, 0, n);
	        }
	        ins.close();
	        out.close();
	    	myItem.setImage1("user/image/"+iid+"_image1.jpg");
    	}
    	if(image2!=null) {
    	String ur="D:/J2EE/workspace1/ruan/WebContent/user/image/"+iid+"_image2.jpg";
		File f= new File(ur);
		if(!f.exists()) {
			try {
				f.getParentFile().mkdirs();//构建文件夹
				f.createNewFile();//构建文件
			} catch (IOException e) {
				e.printStackTrace();
			}
			}
	    	FileInputStream ins = new FileInputStream(image2);
	        FileOutputStream out = new FileOutputStream(f);
	        byte[] b = new byte[1024];
	        int n=0;
	        while((n=ins.read(b))!=-1){
	            out.write(b, 0, n);
	        }
	        ins.close();
	        out.close();
	    	myItem.setImage2("user/image/"+iid+"_image2.jpg");
    	}
    	if(image3!=null) {
    		
    		String ur="D:/J2EE/workspace1/ruan/WebContent/user/image/"+iid+"_image3.jpg";
		File f= new File(ur);
		if(!f.exists()) {
			try {
				f.getParentFile().mkdirs();//构建文件夹
				f.createNewFile();//构建文件
			} catch (IOException e) {
				e.printStackTrace();
			}
			}
	    	FileInputStream ins = new FileInputStream(image3);
	        FileOutputStream out = new FileOutputStream(f);
	        byte[] b = new byte[1024];
	        int n=0;
	        while((n=ins.read(b))!=-1){
	            out.write(b, 0, n);
	        }
	        ins.close();
	        out.close();
	    	myItem.setImage3("user/image/"+iid+"_image3.jpg");
    	}
    	if(image4!=null) {
    		
    		String ur="D:/J2EE/workspace1/ruan/WebContent/user/image/"+iid+"_image4.jpg";
		File f= new File(ur);
		if(!f.exists()) {
			try {
				f.getParentFile().mkdirs();//构建文件夹
				f.createNewFile();//构建文件
			} catch (IOException e) {
				e.printStackTrace();
			}
			}
	    	FileInputStream ins = new FileInputStream(image4);
	        FileOutputStream out = new FileOutputStream(f);
	        byte[] b = new byte[1024];
	        int n=0;
	        while((n=ins.read(b))!=-1){
	            out.write(b, 0, n);
	        }
	        ins.close();
	        out.close();
	    	myItem.setImage4("user/image/"+iid+"_image4.jpg");
    	}
    	if(image5!=null) {
    		
    		String ur="D:/J2EE/workspace1/ruan/WebContent/user/image/"+iid+"_image5.jpg";
		File f= new File(ur);
		if(!f.exists()) {
			try {
				f.getParentFile().mkdirs();//构建文件夹
				f.createNewFile();//构建文件
			} catch (IOException e) {
				e.printStackTrace();
			}
			}
	    	FileInputStream ins = new FileInputStream(image5);
	        FileOutputStream out = new FileOutputStream(f);
	        byte[] b = new byte[1024];
	        int n=0;
	        while((n=ins.read(b))!=-1){
	            out.write(b, 0, n);
	        }
	        ins.close();
	        out.close();
	    	myItem.setImage5("user/image/"+iid+"_image5.jpg");
    	}
    	if(image6!=null) {
    		
    		String ur="D:/J2EE/workspace1/ruan/WebContent/user/image/"+iid+"_image6.jpg";
		File f= new File(ur);
		if(!f.exists()) {
			try {
				f.getParentFile().mkdirs();//构建文件夹
				f.createNewFile();//构建文件
			} catch (IOException e) {
				e.printStackTrace();
			}
			}
	    	FileInputStream ins = new FileInputStream(image6);
	        FileOutputStream out = new FileOutputStream(f);
	        byte[] b = new byte[1024];
	        int n=0;
	        while((n=ins.read(b))!=-1){
	            out.write(b, 0, n);
	        }
	        ins.close();
	        out.close();
	    	myItem.setImage6("user/image/"+iid+"_image6.jpg");
    	}

    	myItem.setUid(uid);
    	ud.addItem(myItem);
		myBasic=ud.searchBasic(uid);
    	myItems=ud.showOnesItems(uid);
    	return "myIssuesjsp";
	}
    public String addUtU(){
    	int myId=myBasic.getUid();
    	int hisId=hisBasic.getUid();
    	Date day=new Date();    
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
    	hisUtU.setCdate(df.format(day));
    	hisUtU.setUser1_id(hisId);
    	hisUtU.setUser2_id(myId);
    	ud.addUtU(hisUtU);
		myBasic=ud.searchBasic(myId);
		hisBasic=ud.searchBasic(hisId);
		hisUser=ud.searchUser(hisId);
		hisUtUs=ud.searchUtUs(hisId);
		comments=ud.searchUtUUser2_ids(hisId);
		
    	return "hisInformjsp";
	}
    public String addAccuse(){
    	int myId=myBasic.getUid();
    	int hisId=hisBasic.getUid();
    	Date day=new Date();    
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
    	hisAccuse.setAdate(df.format(day));
    	hisAccuse.setUser1_id(hisId);
    	hisAccuse.setUser2_id(myId);
    	ud.addAccuse(hisAccuse);
		myBasic=ud.searchBasic(myId);
		hisBasic=ud.searchBasic(hisId);
		hisUser=ud.searchUser(hisId);
		hisUtUs=ud.searchUtUs(hisId);
		comments=ud.searchUtUUser2_ids(hisId);
		
    	return "hisInformjsp";
	}
    public String addItU(){
    	int myId=myBasic.getUid();
    	int iid=hisItem.getIid();
    	int hisId=hisItem.getUid();
    	Date day=new Date();    
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
    	itu.setCdate(df.format(day));
    	itu.setIid(iid);
    	itu.setCuser_id(myId);
    	ud.addItU(itu);
		myBasic=ud.searchBasic(myId);
    	hisItem=ud.showSingleItem(iid);
		hisUser=ud.searchUser(hisId);
		itus=ud.searchItUs(iid);
		comments=ud.searchItUCuser_ids(iid);
		
    	return "hisItemjsp";
	}
    public String hisItem(){
    	int myId=myBasic.getUid();
    	int iid=hisItem.getIid();
    	int hisId=hisBasic.getUid();
		myBasic=ud.searchBasic(myId);
		hisBasic=ud.searchBasic(hisId);
    	hisItem=ud.showSingleItem(iid);
		hisUser=ud.searchUser(hisId);
		itus=ud.searchItUs(iid);
		comments=ud.searchItUCuser_ids(iid);
    	return "hisItemjsp";
	}
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
