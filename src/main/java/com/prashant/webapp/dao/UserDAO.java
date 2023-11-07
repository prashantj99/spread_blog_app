package com.prashant.webapp.dao;

import com.prashant.webapp.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class UserDAO {
    private final SessionFactory sessionFactory;

    public UserDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public boolean addUser(User user) {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(user);
            tx.commit();
            return true; // Operation was successful
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
            return false; // Operation failed
        } finally {
            session.close();
        }
    }

    public User getUserById(String id) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(User.class, id);
        }
    }

    public User getUserByEmail(String email) {
        try (Session session = sessionFactory.openSession()) {
            return (User) session.createQuery("FROM User WHERE email = :email")
                .setParameter("email", email)
                .uniqueResult();
        }
    }

    public boolean updateUser(User user) {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.update(user);
            tx.commit();
            return true; // Operation was successful
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
            return false; // Operation failed
        } finally {
            session.close();
        }
    }

    public boolean deleteUser(String id) {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            User user = session.get(User.class, id);
            if (user != null) {
                session.delete(user);
                tx.commit();
                return true; // Operation was successful
            } else {
                tx.rollback();
                return false; // User not found, operation failed
            }
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
            return false; // Operation failed
        } finally {
            session.close();
        }
    }
}
