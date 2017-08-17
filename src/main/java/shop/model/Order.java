package shop.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository ("order")
public class Order implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String toString() {
		return "Order [id=" + id + ", userid=" + userid + ", total=" + total + ", addressid=" + addressid + ", remarks="
				+ remarks + ", time=" + time + ", state=" + state + ", itemList=" + itemList + "]";
	}

	private String id;

    private Integer userid;

    private Double total;

    private Integer addressid;

    private String remarks;

    private Date time;

    private Integer state;
    
    private List<Orderitem> itemList;//订单商品集合
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

	public List<Orderitem> getItemList() {
		return itemList;
	}

	public void setItemList(List<Orderitem> itemList) {
		this.itemList = itemList;
	}
}