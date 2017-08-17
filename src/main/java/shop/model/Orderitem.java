package shop.model;

import java.io.Serializable;

import org.springframework.stereotype.Repository;
@Repository
public class Orderitem implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String toString() {
		return "Orderitem [id=" + id + ", goodsid=" + goodsid + ", goodsname=" + goodsname + ", propic=" + propic
				+ ", goodsprice=" + goodsprice + ", sum=" + sum + ", sumtotal=" + sumtotal + ", orderid=" + orderid
				+ "]";
	}

	private Integer id;

    private Integer goodsid;

    private String goodsname;

    private String propic;

    private Double goodsprice;

    private Integer sum;

    private Double sumtotal;

    private String orderid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname == null ? null : goodsname.trim();
    }

    public String getPropic() {
        return propic;
    }

    public void setPropic(String propic) {
        this.propic = propic == null ? null : propic.trim();
    }

    public Double getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(Double goodsprice) {
        this.goodsprice = goodsprice;
    }

    public Integer getSum() {
        return sum;
    }

    public void setSum(Integer sum) {
        this.sum = sum;
    }

    public Double getSumtotal() {
        return sumtotal;
    }

    public void setSumtotal(Double sumtotal) {
        this.sumtotal = sumtotal;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }
}