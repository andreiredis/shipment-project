package dk.dtu.gbar.gitlab.shipment;

public class Journey extends Entity {
    private Container container;
    private Client client;
	private ContainerStatus status;
	private Location origin;
	private Location destination;
    private String cargo;
	private Location atSea = new Location("At sea");
	private boolean isConcluded = false;

	public Journey(Location origin, Location destination, Client client, String cargo) {
        this.origin = origin;
        this.destination = destination;
        this.cargo = cargo;
        this.client = client;
    }

    public void embark(){
		container.setLocation(atSea);
	}

	public void arrive(){
		container.setLocation(destination);
		isConcluded = true;
		container.getJourneyHistory().add(this);
	}

    // getters and setters

	public boolean isConcluded() {return isConcluded; }

	public String getCargo() {return cargo; }

    public Container getContainer() {
        return container;
    }

    public void setContainer(Container container) {
        this.container = container;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Location getOrigin() {
        return origin;
    }

    public Location getDestination() {
        return destination;
    }
}
