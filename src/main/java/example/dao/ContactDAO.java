package example.dao;

import example.domain.Contact;

import java.util.List;

public interface ContactDAO {

    public void addContact(Contact contsct);

    public List<Contact> listContact();

    public void removeContact(Integer id);

}
