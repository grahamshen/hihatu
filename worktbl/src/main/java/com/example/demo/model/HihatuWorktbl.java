package com.example.demo.model;

import java.math.BigDecimal;
import java.util.Date;

public class HihatuWorktbl {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hihatu_worktbl.hid
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	private Integer hid;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hihatu_worktbl.person
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	private String person;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hihatu_worktbl.hdate
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	private Date hdate;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hihatu_worktbl.status
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	private String status;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hihatu_worktbl.fix
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	private Integer fix;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hihatu_worktbl.hours
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	private BigDecimal hours;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hihatu_worktbl.stime
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	private Date stime;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hihatu_worktbl.etime
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	private Date etime;
	private Date relax;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column hihatu_worktbl.extra
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	private String loc;
	private String extra;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hihatu_worktbl.hid
	 * @return  the value of hihatu_worktbl.hid
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public Integer getHid() {
		return hid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hihatu_worktbl.hid
	 * @param hid  the value for hihatu_worktbl.hid
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public Date getRelax() {
		return relax;
	}

	public void setRelax(Date relax) {
		this.relax = relax;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hihatu_worktbl.person
	 * @return  the value of hihatu_worktbl.person
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public String getPerson() {
		return person;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hihatu_worktbl.person
	 * @param person  the value for hihatu_worktbl.person
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setPerson(String person) {
		this.person = person;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hihatu_worktbl.hdate
	 * @return  the value of hihatu_worktbl.hdate
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public Date getHdate() {
		return hdate;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hihatu_worktbl.hdate
	 * @param hdate  the value for hihatu_worktbl.hdate
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setHdate(Date hdate) {
		this.hdate = hdate;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hihatu_worktbl.status
	 * @return  the value of hihatu_worktbl.status
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hihatu_worktbl.status
	 * @param status  the value for hihatu_worktbl.status
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hihatu_worktbl.fix
	 * @return  the value of hihatu_worktbl.fix
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public Integer getFix() {
		return fix;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hihatu_worktbl.fix
	 * @param fix  the value for hihatu_worktbl.fix
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setFix(Integer fix) {
		this.fix = fix;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hihatu_worktbl.hours
	 * @return  the value of hihatu_worktbl.hours
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public BigDecimal getHours() {
		return hours;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hihatu_worktbl.hours
	 * @param hours  the value for hihatu_worktbl.hours
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setHours(BigDecimal hours) {
		this.hours = hours;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hihatu_worktbl.stime
	 * @return  the value of hihatu_worktbl.stime
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public Date getStime() {
		return stime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hihatu_worktbl.stime
	 * @param stime  the value for hihatu_worktbl.stime
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setStime(Date stime) {
		this.stime = stime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hihatu_worktbl.etime
	 * @return  the value of hihatu_worktbl.etime
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public Date getEtime() {
		return etime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hihatu_worktbl.etime
	 * @param etime  the value for hihatu_worktbl.etime
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setEtime(Date etime) {
		this.etime = etime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column hihatu_worktbl.extra
	 * @return  the value of hihatu_worktbl.extra
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public String getExtra() {
		return extra;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column hihatu_worktbl.extra
	 * @param extra  the value for hihatu_worktbl.extra
	 * @mbg.generated  Sun Aug 07 13:16:00 JST 2022
	 */
	public void setExtra(String extra) {
		this.extra = extra;
	}
}