package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.HihatuWorktblMapper;
import com.ruoyi.system.domain.HihatuWorktbl;
import com.ruoyi.system.service.IHihatuWorktblService;
import com.ruoyi.common.core.text.Convert;

/**
 * 通勤Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-08-13
 */
@Service
public class HihatuWorktblServiceImpl implements IHihatuWorktblService 
{
    @Autowired
    private HihatuWorktblMapper hihatuWorktblMapper;

    /**
     * 查询通勤
     * 
     * @param hid 通勤主键
     * @return 通勤
     */
    @Override
    public HihatuWorktbl selectHihatuWorktblByHid(Long hid)
    {
        return hihatuWorktblMapper.selectHihatuWorktblByHid(hid);
    }

    /**
     * 查询通勤列表
     * 
     * @param hihatuWorktbl 通勤
     * @return 通勤
     */
    @Override
    public List<HihatuWorktbl> selectHihatuWorktblList(HihatuWorktbl hihatuWorktbl)
    {
        return hihatuWorktblMapper.selectHihatuWorktblList(hihatuWorktbl);
    }

    /**
     * 新增通勤
     * 
     * @param hihatuWorktbl 通勤
     * @return 结果
     */
    @Override
    public int insertHihatuWorktbl(HihatuWorktbl hihatuWorktbl)
    {
        return hihatuWorktblMapper.insertHihatuWorktbl(hihatuWorktbl);
    }

    /**
     * 修改通勤
     * 
     * @param hihatuWorktbl 通勤
     * @return 结果
     */
    @Override
    public int updateHihatuWorktbl(HihatuWorktbl hihatuWorktbl)
    {
        return hihatuWorktblMapper.updateHihatuWorktbl(hihatuWorktbl);
    }

    /**
     * 批量删除通勤
     * 
     * @param hids 需要删除的通勤主键
     * @return 结果
     */
    @Override
    public int deleteHihatuWorktblByHids(String hids)
    {
        return hihatuWorktblMapper.deleteHihatuWorktblByHids(Convert.toStrArray(hids));
    }

    /**
     * 删除通勤信息
     * 
     * @param hid 通勤主键
     * @return 结果
     */
    @Override
    public int deleteHihatuWorktblByHid(Long hid)
    {
        return hihatuWorktblMapper.deleteHihatuWorktblByHid(hid);
    }
}
