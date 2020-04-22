package dk.dtu.gbar.gitlab.shipment;
import java.util.ArrayList;

public class Client extends Entity {
    String name;
    String address;
    String refPerson;
    String email;
    String password;
    ArrayList<Journey> journeys = new ArrayList<>();

    //constructor with mandatory info
    public Client(String name, String address, String refPerson, String email, String password) {
        this.name = name;
        this.address = address;
        this.refPerson = refPerson;
        this.email = email;
        this.password= password;
    }

    // setters and getters

    public ArrayList<Journey> getJourneys() {
        return journeys;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRefPerson(String refPerson) {
        this.refPerson = refPerson;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getRefPerson() {
        return refPerson;
    }

    public String getEmail() {
        return email;
    }


}
