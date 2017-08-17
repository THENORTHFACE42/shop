package shop.model;

import java.io.Serializable;
import java.util.List;

public class Bigtype implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public String toString() {
		return "Bigtype [id=" + id + ", name=" + name + ", remarks=" + remarks + ", propic=" + propic
				+ ", smallTypeList=" + smallTypeList + ", goods=" + goods + "]";
	}

	private Integer id;

    private String name;

    private String remarks;

    private String propic;
    
    private List<Smalltype> smallTypeList;
    
	private List<Goods> goods;
    public List<Smalltype> getSmallTypeList() {
		return smallTypeList;
	}

	public void setSmallTypeList(List<Smalltype> smallTypeList) {
		this.smallTypeList = smallTypeList;
	}

	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

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

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public String getPropic() {
        return propic;
    }

    public void setPropic(String propic) {
        this.propic = propic == null ? null : propic.trim();
    }
}