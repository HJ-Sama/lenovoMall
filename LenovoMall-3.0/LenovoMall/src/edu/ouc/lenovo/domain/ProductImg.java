package edu.ouc.lenovo.domain;

import java.io.Serializable;

public class ProductImg implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private String id;//商品ID
	private String descript;//图片描述
	private String url;//图片URL
	private int is_master;//是否为主图
	private int img_order;//排序编号
	private int img_status;//状态
	
	public String getId() { 
		return id;
	}
	public void setId(String id) { 
		this.id = id;
	}
	public String getDescript() { 
		return descript;
	}
	public void setDescript(String descript) { 
		this.descript = descript;
	}
	public String getUrl() { 
		return url;
	}
	public void setUrl(String url) { 
		this.url = url;
	}
	public int getIs_master() {
		return is_master;
	}
	public void setIs_master(int is_master) {
		this.is_master=is_master;
	}
	public int getImg_order() {
		return img_order;
	}
	public void setImg_order(int img_order) {
		this.img_order=img_order;
	}
	public int getImg_status() {
		return img_status;
	}
	public void setImg_status(int img_status) {
		this.img_status=img_status;
	}
	
	
//	@Override
//	public String toString() {
//		return "Product [id=" + id + ", name=" + name + ", price=" + price
//				+ ", category=" + category + ", pnum=" + pnum + ", imgurl="
//				+ imgurl + ", descript=" + descript + ", totalSaleNum="
//				+ "]";
//	}

}