package shop.model;

import java.io.Serializable;
import java.util.List;

public class Shop implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String toString() {
		return "Shop [id=" + id + ", shopname=" + shopname + ", discripe=" + discripe + ", userid=" + userid
				+ ", goodslist=" + goodslist + "]";
	}

	private Integer id;

    private String shopname;

    private String discripe;

    private Integer userid;
    
    private List<Goods> goodslist;//货物集合
    
    public List<Goods> getGoodslist() {
		return goodslist;
	}

	public void setGoodslist(List<Goods> goodslist) {
		this.goodslist = goodslist;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname == null ? null : shopname.trim();
    }

    public String getDiscripe() {
        return discripe;
    }

    public void setDiscripe(String discripe) {
        this.discripe = discripe == null ? null : discripe.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}