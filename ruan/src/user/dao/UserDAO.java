package user.dao;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import user.Accuse;
import user.Basic;
import user.Comment;
import user.ItU;
import user.Item;
import user.Iuname;
import user.Up;
import user.User;
import user.UtU;

public class UserDAO {
	
	public void addbasic(Basic b) {
		//List<User> result = new ArrayList<User>();
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.save(b);
		s.getTransaction().commit();
		s.close();
	}
	public void addup(Up b) {
		//List<User> result = new ArrayList<User>();
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.save(b);
		s.getTransaction().commit();
		s.close();
	}
	public void adduser(User b) {
		//List<User> result = new ArrayList<User>();
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.save(b);
		s.getTransaction().commit();
		s.close();
	}
	public int searchId(String phone) {
		Basic t = null;
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
        Query q = s.createQuery("from Basic where phone = :phone")
                .setParameter("phone", phone);
		@SuppressWarnings("unchecked")
		List<Basic> r = q.list();
        for(Basic u:r) {
        	t=u;
        }
		//t= (Basic) s.get(Basic.class,phone);
		s.close();
		sf.close();
		return t.getUid();
	}
	public Basic searchBasic(int id) {
		Basic t = null;
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		t= (Basic) s.get(Basic.class,id);
		s.close();
		sf.close();
		return t;
	}
	public Up searchUp(int id) {
		Up t = null;
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		t= (Up) s.get(Up.class,id);
		s.close();
		sf.close();
		return t;
	}
	public User searchUser(int id) {
		User t = null;
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		t= (User) s.get(User.class,id);
		s.close();
		sf.close();
		return t;
	}
	public List<UtU> searchUtUs(int user1_id) {
		 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("from UtU where user1_id = :user1_id")
                .setParameter("user1_id", user1_id);
        
        @SuppressWarnings("unchecked")
		List<UtU> result= q.list();
        
        //result=(Item) s.get(Item.class,uid);
        s.close();
        sf.close();
        return result;
    }
    public List<Item> showOnesItems(int uid) {
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("from Item where uid = :uid")
                .setParameter("uid", uid);
        
        @SuppressWarnings("unchecked")
		List<Item> result= q.list();
        
        //result=(Item) s.get(Item.class,uid);
        s.close();
        sf.close();
        return result;
    }
    public List<User> showUsersBySname(String sname) {
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("from User where sname like :sname order by sname asc")
                .setParameter("sname", "%"+sname+"%");
        
        @SuppressWarnings("unchecked")
		List<User> result= q.list();
        
        s.close();
        sf.close();
        return result;
    }
    public List<User> showItemsByLoc(String loc) {
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("from User where loc like :loc order by loc asc")
                .setParameter("loc", "%"+loc+"%");
        
        @SuppressWarnings("unchecked")
		List<User> result= q.list();
        
        //result=(Item) s.get(Item.class,uid);
        s.close();
        sf.close();
        return result;
    }
    public List<Iuname> showItemsByIname(String iname) {
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("select new user.Iuname(i.iid,i.uid,i.iname,u.sname,i.cprice,i.date,i.category)"
        		+ " from Item i,User u where i.iname like :iname and i.uid=u.uid order by i.iname asc")
                .setParameter("iname", "%"+iname+"%");
        
        @SuppressWarnings("unchecked")
		List<Iuname> result= q.list();
        
        //result=(Item) s.get(Item.class,uid);
        s.close();
        sf.close();
        return result;
    }
    public List<Iuname> showItemsByCategory(String category) {
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("select new user.Iuname(i.iid,i.uid,i.iname,u.sname,i.cprice,i.date,i.category)"
        		+ " from Item i,User u where i.category like :category and i.uid=u.uid order by i.category asc")
                .setParameter("category","%"+ category+"%");
        
        @SuppressWarnings("unchecked")
		List<Iuname> result= q.list();
        
        //result=(Item) s.get(Item.class,uid);
        s.close();
        sf.close();
        return result;
    }
    public Item showSingleItem(int iid) {
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        Item result;
        result=(Item) s.get(Item.class,iid);
        s.close();
        sf.close();
        return result;
    }

	public void updateMyInform(Up up,User user) {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.update(up);
		s.update(user);
		s.getTransaction().commit();
		s.close();
		sf.close();
	}
	public void updateItem(Item item) {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.update(item);
		s.getTransaction().commit();
		s.close();
		sf.close();
	}
	public void addItem(Item item) {
		//List<User> result = new ArrayList<User>();
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.save(item);
		s.getTransaction().commit();
		s.close();
	}
	public void addUtU(UtU u) {
		//List<User> result = new ArrayList<User>();
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.save(u);
		s.getTransaction().commit();
		s.close();
	}
	public void addAccuse(Accuse a) {
		//List<User> result = new ArrayList<User>();
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.save(a);
		s.getTransaction().commit();
		s.close();
	}
	public List<ItU> searchItUs(int iid) {
		 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("from ItU where iid = :iid order by iid asc")
                .setParameter("iid", iid);
        
        @SuppressWarnings("unchecked")
		List<ItU> result= q.list();
        
        //result=(Item) s.get(Item.class,uid);
        s.close();
        sf.close();
        return result;
    }
	public void addItU(ItU itu) {
		//List<User> result = new ArrayList<User>();
			SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session s = sf.openSession();
			s.beginTransaction();
			s.save(itu);
			s.getTransaction().commit();
			s.close();
			sf.close();
		
	}
	public List<Comment> searchUtUUser2_ids(int hisId) {
		SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("select new user.Comment(u.uid,u.sname,t.cdate,t.comment) from  User as u,UtU as t where t.user1_id =:hisId and u.uid=t.user2_id order by t.user1_id asc")
                .setParameter("hisId", hisId);
        
        @SuppressWarnings("unchecked")
		List<Comment> result= q.list();
        
        s.close();
        sf.close();
        return result;
	}
	public List<Comment> searchItUCuser_ids(int iid) {
		SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        Query q = s.createQuery("select new user.Comment(u.uid,u.sname,t.cdate,t.comment) from  User as u,ItU as t where t.iid =:iid and u.uid=t.cuser_id order by t.iid asc")
                        .setParameter("iid", iid);
        @SuppressWarnings("unchecked")
		List<Comment> result= q.list();
        s.close();
        sf.close();
        return result;
	}
	public List<Accuse> showAccuses() {
		SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("select a from Up as u,Accuse as a where u.uid =a.user1_id and u.pow=0 order by a.user1_id asc");
        
        @SuppressWarnings("unchecked")
		List<Accuse> result= q.list();
        
        s.close();
        sf.close();
        return result;
	}
	public List<Accuse> showRejects() {
		SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("select a from  Up as u,Accuse as a where u.uid =a.user1_id and u.pow<0 order by a.user1_id asc");
        
        @SuppressWarnings("unchecked")
		List<Accuse> result= q.list();
        
        s.close();
        sf.close();
        return result;
	}
	public void doReject(Up up) {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.update(up);
		s.getTransaction().commit();
		s.close();
		sf.close();
	}
	public void undoReject(Up up,int uid) {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.update(up);
		Query q = s.createQuery("from Accuse as a where a.user1_id=:uid order by a.user1_id asc")
				.setParameter("uid", uid);
        @SuppressWarnings("unchecked")
		List<Accuse> acs=q.list();
        for(Accuse ac:acs) {
        	s.delete(ac);
        }
		s.getTransaction().commit();
		s.close();
		sf.close();
	}
	public int getMaxIId() {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Object[] count = (Object[])s.createQuery("select min(i.iid),max(i.iid) from Item i")
				.uniqueResult();
		int min = (int)count[0];
		int max = (int)count[1];
		s.close();
		sf.close();
		return max;
	}
}
