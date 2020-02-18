package example.service;

import example.dao.ContactDAO;
import example.domain.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class ContactServiceRelease implements ContactService {

    @Autowired
    private ContactDAO contactDAO;

    @Override
    @Transactional
    public void addContact(Contact contact) {
        contactDAO.addContact(contact);
    }

    @Override
    @Transactional
    public List<Contact> listContact() {
        return contactDAO.listContact();
    }

    @Override
    @Transactional
    public void removeContact(Integer id) {
        contactDAO.removeContact(id);
    }
}
