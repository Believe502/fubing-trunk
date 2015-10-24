package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table
public class Tmedia extends TbaseEntity{

	private static final long serialVersionUID = -4695238551167953506L;
	/**媒体标题*/
	private String title;
	/**媒体缩略图地址*/
	private String imgpath;
	/**媒体所需要的金币*/
	private Integer coin;
	/**网盘链接地址*/
	private String url;
	/**视频描述*/
	private String detail;
	/**分类类型*/
	private Integer type;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public Integer getCoin() {
		return coin;
	}
	public void setCoin(Integer coin) {
		this.coin = coin;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	
}
