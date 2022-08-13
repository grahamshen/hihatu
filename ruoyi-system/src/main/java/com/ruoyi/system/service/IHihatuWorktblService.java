package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.HihatuWorktbl;

/**
 * 通勤Service接口
 * 
 * @author ruoyi
 * @date 2022-08-13
 */
public interface IHihatuWorktblService 
{
    /**
     * 查询通勤
     * 
     * @param hid 通勤主键
     * @return 通勤
     */
    public HihatuWorktbl selectHihatuWorktblByHid(Long hid);

    /**
     * 查询通勤列表
     * 
     * @param hihatuWorktbl 通勤
     * @return 通勤集合
     */
    public List<HihatuWorktbl> selectHihatuWorktblList(HihatuWorktbl hihatuWorktbl);

    /**
     * 新增通勤
     * 
     * @param hihatuWorktbl 通勤
     * @return 结果
     */
    public int insertHihatuWorktbl(HihatuWorktbl hihatuWorktbl);

    /**
     * 修改通勤
     * 
     * @param hihatuWorktbl 通勤
     * @return 结果
     */
    public int updateHihatuWorktbl(HihatuWorktbl hihatuWorktbl);

    /**
     * 批量删除通勤
     * 
     * @param hids 需要删除的通勤主键集合
     * @return 结果
     */
    public int deleteHihatuWorktblByHids(String hids);

    /**
     * 删除通勤信息
     * 
     * @param hid 通勤主键
     * @return 结果
     */
    public int deleteHihatuWorktblByHid(Long hid);
}
