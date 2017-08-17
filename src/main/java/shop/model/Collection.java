package shop.model;

import java.io.Serializable;
import java.util.Date;

public class Collection implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String toString() {
		return "Collection [id=" + id + ", userid=" + userid + ", goodsid=" + goodsid + ", goodsname=" + goodsname
				+ ", goodspropic=" + goodspropic + ", goodsprice=" + goodsprice + ", time=" + time + "]";
	}

	private Integer id;

    private Integer userid;

    private Integer goodsid;

    private String goodsname;

    private String goodspropic;

    private Double goodsprice;

    private Date time;
    private Integer shopid;
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
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

    public String getGoodspropic() {
        return goodspropic;
    }

    public void setGoodspropic(String goodspropic) {
        this.goodspropic = goodspropic == null ? null : goodspropic.trim();
    }

    public Double getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(Double goodsprice) {
        this.goodsprice = goodsprice;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

	public Integer getShopid() {
		return shopid;
	}

	public void setShopid(Integer shopid) {
		this.shopid = shopid;
	}

}