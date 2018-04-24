package TOBA.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import TOBA.web.User;

/**
 *
 * @author 2344109
 */
public class UserDB {
    
    public static void insert(User user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(user);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
}
