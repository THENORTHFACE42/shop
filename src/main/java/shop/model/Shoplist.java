package shop.model;

import java.io.Serializable;

import org.springframework.stereotype.Repository;
@Repository("shoplist")
public class Shoplist implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String toString() {
		return "Shoplist [id=" + id + ", goodsid=" + goodsid + ", goodsname=" + goodsname + ", propic=" + propic
				+ ", goodsprice=" + goodsprice + ", userid=" + userid + ", shopid=" + shopid + ", sum=" + sum + "]";
	}

	private Integer id;

    private Integer goodsid;

    private String goodsname;

    private String propic;

    private Double goodsprice;

    private Integer userid;

    private Integer shopid;

    private Integer sum;

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

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getShopid() {
        return shopid;
    }

    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }

    public Integer getSum() {
        return sum;
    }

    public void setSum(Integer sum) {
        this.sum = sum;
    }
}