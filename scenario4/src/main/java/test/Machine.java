package test;

/**
 * Represents a machine in the cluster. It is used to know when the cluster is formed
 *
 * @author Pedro Ruivo
 * @since 1.0
 */
public class Machine extends Machine_Base {

    public Machine(String hostname) {
        super();
        setHostname(hostname);
    }


    public String toString() {
        return "Machine{hostname=" + getHostname() + "}";
    }
}
