package com.itheima.oracle.domain;

import java.util.Date;

public class Owners {
	private Long id;//���
	private String name;//ҵ������
	private Long addressid;//��ַ���
	private String housenumber;//���ƺ�
	private String watermeter;//ˮ����
	private Date adddate;//�Ǽ�����
	private Long ownertypeid;//ҵ������ID
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getAddressid() {
		return addressid;
	}
	public void setAddressid(Long addressid) {
		this.addressid = addressid;
	}
	public String getHousenumber() {
		return housenumber;
	}
	public void setHousenumber(String housenumber) {
		this.housenumber = housenumber;
	}
	public String getWatermeter() {
		return watermeter;
	}
	public void setWatermeter(String watermeter) {
		this.watermeter = watermeter;
	}
	public Date getAdddate() {
		return adddate;
	}
	public void setAdddate(Date adddate) {
		this.adddate = adddate;
	}
	public Long getOwnertypeid() {
		return ownertypeid;
	}
	public void setOwnertypeid(Long ownertypeid) {
		this.ownertypeid = ownertypeid;
	}

}
