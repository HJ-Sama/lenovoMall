package edu.ouc.lenovo.domain;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id; // 商品编号
	private String name; // 名称
	private double price; // 价格
	private String category; // 分类
	private String disk; //硬盘
	private String cpu;//CPU
	private String memory;//内存
	private String graphics;//显卡
	private String screen;//屏幕
	private String color;//颜色
	private String descript;//描述
	private int pnum; // 数量
	private String imgurl; // 图片路径
//	private String description; // 描述
	
	public String getDisk() {
		return disk;
	}
	public void setDisk(String disk) {
		this.disk=disk;
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu=cpu;
	}
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory=memory;
	}
	public String getGraphics() {
		return graphics;
	}
	public void setGraphics(String graphics) {
		this.graphics=graphics;
	}
	
	public String getScreen() {
		return screen;
	}
	public void setScreen(String screen) {
		this.screen=screen;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript=descript;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color=color;
	}
	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public String getImgurl() {
		return imgurl;
	}

	// a.jpg a_s.jpg
	public String getImgurl_s() {
		int index = imgurl.lastIndexOf("."); // 得到最的.的索引
		String first = imgurl.substring(0, index);

		String last = imgurl.substring(index);

		return first + "_s" + last;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

//	public String getDescription() {
//		return description;
//	}
//
//	public void setDescription(String description) {
//		this.description = description;
//	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price
				+ ", category=" + category + ", pnum=" + pnum + ", imgurl="
				+ imgurl + ", descript=" + descript + ", totalSaleNum="
				+ "]";
	}

}
