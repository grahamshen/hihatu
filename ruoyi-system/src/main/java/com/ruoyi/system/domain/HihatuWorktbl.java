package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 通勤对象 hihatu_worktbl
 * 
 * @author ruoyi
 * @date 2022-08-13
 */
public class HihatuWorktbl extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long hid;

    /** 员工 */
    @Excel(name = "员工")
    private String person;

    /** 日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date hdate;

    /** 类别 */
    @Excel(name = "类别")
    private String status;

    /** 已审批 */
    private Long fix;

    /** 工作时长 */
    @Excel(name = "工作时长")
    private BigDecimal hours;

    /** 开始时间 */
    @Excel(name = "开始时间")
    private String stime;

    /** 结束时间 */
    @Excel(name = "结束时间")
    private String etime;

    /** 备注 */
    @Excel(name = "备注")
    private String extra;

    public void setHid(Long hid) 
    {
        this.hid = hid;
    }

    public Long getHid() 
    {
        return hid;
    }
    public void setPerson(String person) 
    {
        this.person = person;
    }

    public String getPerson() 
    {
        return person;
    }
    public void setHdate(Date hdate) 
    {
        this.hdate = hdate;
    }

    public Date getHdate() 
    {
        return hdate;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setFix(Long fix) 
    {
        this.fix = fix;
    }

    public Long getFix() 
    {
        return fix;
    }
    public void setHours(BigDecimal hours) 
    {
        this.hours = hours;
    }

    public BigDecimal getHours() 
    {
        return hours;
    }
    public void setStime(String stime) 
    {
        this.stime = stime;
    }

    public String getStime() 
    {
        return stime;
    }
    public void setEtime(String etime) 
    {
        this.etime = etime;
    }

    public String getEtime() 
    {
        return etime;
    }
    public void setExtra(String extra) 
    {
        this.extra = extra;
    }

    public String getExtra() 
    {
        return extra;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("hid", getHid())
            .append("person", getPerson())
            .append("hdate", getHdate())
            .append("status", getStatus())
            .append("fix", getFix())
            .append("hours", getHours())
            .append("stime", getStime())
            .append("etime", getEtime())
            .append("extra", getExtra())
            .toString();
    }
}
