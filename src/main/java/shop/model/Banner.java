package shop.model;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

public class Banner implements Serializable {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String name;

    private String propic;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPropic() {
        return propic;
    }

    public void setPropic(String propic) {
        this.propic = propic == null ? null : propic.trim();
    }

	@Override
	public String toString() {
		return "Banner [id=" + id + ", name=" + name + ", propic=" + propic + "]";
	}
    
}