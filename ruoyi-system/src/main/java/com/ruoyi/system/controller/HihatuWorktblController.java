package com.ruoyi.system.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.HihatuWorktbl;
import com.ruoyi.system.service.IHihatuWorktblService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 通勤Controller
 * 
 * @author ruoyi
 * @date 2022-08-13
 */
@Controller
@RequestMapping("/system/worktbl")
public class HihatuWorktblController extends BaseController
{
    private String prefix = "system/worktbl";

    @Autowired
    private IHihatuWorktblService hihatuWorktblService;

    @RequiresPermissions("system:worktbl:view")
    @GetMapping()
    public String worktbl()
    {
        return prefix + "/worktbl";
    }

    /**
     * 查询通勤列表
     */
    @RequiresPermissions("system:worktbl:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HihatuWorktbl hihatuWorktbl)
    {
        startPage();
        List<HihatuWorktbl> list = hihatuWorktblService.selectHihatuWorktblList(hihatuWorktbl);
        return getDataTable(list);
    }

    /**
     * 导出通勤列表
     */
    @RequiresPermissions("system:worktbl:export")
    @Log(title = "通勤", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HihatuWorktbl hihatuWorktbl)
    {
        List<HihatuWorktbl> list = hihatuWorktblService.selectHihatuWorktblList(hihatuWorktbl);
        ExcelUtil<HihatuWorktbl> util = new ExcelUtil<HihatuWorktbl>(HihatuWorktbl.class);
        return util.exportExcel(list, "通勤数据");
    }

    /**
     * 新增通勤
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存通勤
     */
    @RequiresPermissions("system:worktbl:add")
    @Log(title = "通勤", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HihatuWorktbl hihatuWorktbl)
    {
        return toAjax(hihatuWorktblService.insertHihatuWorktbl(hihatuWorktbl));
    }

    /**
     * 修改通勤
     */
    @RequiresPermissions("system:worktbl:edit")
    @GetMapping("/edit/{hid}")
    public String edit(@PathVariable("hid") Long hid, ModelMap mmap)
    {
        HihatuWorktbl hihatuWorktbl = hihatuWorktblService.selectHihatuWorktblByHid(hid);
        mmap.put("hihatuWorktbl", hihatuWorktbl);
        return prefix + "/edit";
    }

    /**
     * 修改保存通勤
     */
    @RequiresPermissions("system:worktbl:edit")
    @Log(title = "通勤", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HihatuWorktbl hihatuWorktbl)
    {
/*    	hihatuWorktbl.setStime(hihatuWorktbl.getStime()+":00");
    	hihatuWorktbl.setEtime(hihatuWorktbl.getEtime()+":00");
    	hihatuWorktbl.setRelax(hihatuWorktbl.getRelax()+":00");
*/    	
        return toAjax(hihatuWorktblService.updateHihatuWorktbl(hihatuWorktbl));
    }

    /**
     * 删除通勤
     */
    @RequiresPermissions("system:worktbl:remove")
    @Log(title = "通勤", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(hihatuWorktblService.deleteHihatuWorktblByHids(ids));
    }
}
