package com.example.demo;

import java.util.Date;
import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity // This tells Hibernate to make a table out of this class
public class Hihatu_worktbl {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer hid;

	private String person;
	
	private Date hdate;
	
	private String status;
	
	private Integer fix;
	
	
	private Time stime;
	
	private Time etime;
	private Time relax;
	
	private String loc;
	private String extra;


	public Time getRelax() {
		return relax;
	}

	public void setRelax(Time relax) {
		this.relax = relax;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public Hihatu_worktbl(String person, Date hdate, String status, Integer fix, Time stime, Time etime, Time relax,
			String loc, String extra) {
		super();
		this.person = person;
		this.hdate = hdate;
		this.status = status;
		this.fix = fix;
		this.stime = stime;
		this.etime = etime;
		this.relax = relax;
		this.loc = loc;
		this.extra = extra;
	}


	public Integer getHid() {
		return hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public Date getHdate() {
		return hdate;
	}

	public void setHdate(Date hdate) {
		this.hdate = hdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getFix() {
		return fix;
	}

	public void setFix(Integer fix) {
		this.fix = fix;
	}

	public Time getStime() {
		return stime;
	}

	public void setStime(Time stime) {
		this.stime = stime;
	}

	public Time getEtime() {
		return etime;
	}

	public void setEtime(Time etime) {
		this.etime = etime;
	}

	public String getExtra() {
		return extra;
	}

	public void setExtra(String extra) {
		this.extra = extra;
	}
	
}
