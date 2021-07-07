package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.pojo.Instype;
import com.yuerhuixue.service.InstypeService;
import com.yuerhuixue.util.ImageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@Controller
public class InstypeController {
    
    @Autowired
    @Qualifier("instypeServiceImpl")
    private InstypeService instypeService;
    
    @RequestMapping("instypeList.do")
    public String instypeList(HttpServletRequest request) throws SQLException {
        List<Instype> instypes = instypeService.instypeList();
        request.setAttribute("instypes", instypes);
        return "instypelist";
    }
    
    @RequestMapping("instypeModifyPage.do")
    public String instypeModifyPage(Integer id, HttpServletRequest request) throws SQLException {
        Instype instypeById = instypeService.findInstypeById(id);
        if (instypeById != null){
            request.setAttribute("instype", instypeById);
            return "instypemodify";
        }else {
            return "instypelist";
        }
    }
    
    @RequestMapping("instypeModify.do")
    public String instypeModify(@RequestParam MultipartFile pic, Instype instype, HttpServletRequest request) throws SQLException, IOException {

        if (pic.getOriginalFilename() != ""){
            //获取乐器原有图片地址
            String picpathBefore = instypeService.findInstypeById(instype.getId()).getPicpath();

            //项目路径
            String picpathPrefix = request.getServletContext().getRealPath("/");

            File fileBefore = new File(picpathPrefix + picpathBefore);

            //删除原有乐器图片
            fileBefore.delete();
            instype.setPicpath(null);

            //进行图片上传并更名
            String picRealname = pic.getOriginalFilename();
            String picname = ImageUtil.setPicname();

            String picpath = "uploadimgs/instype/" + picname;

            //判断后缀是否为jpg
            if (ImageUtil.isJpg(picRealname)){

                File ToPicpath = new File(picpathPrefix +picpath);
                pic.transferTo(ToPicpath);

                //设置图片路径存入数据库
                instype.setPicpath(picpath);
            }
        }else {
            String path = instypeService.findInstypeById(instype.getId()).getPicpath();
            instype.setPicpath(path);
        }

        Boolean b = instypeService.instypeModify(instype);
        if (b){
            List<Instype> instypes = instypeService.instypeList();
            request.setAttribute("instypes", instypes);
            return "instypelist";
        }else {
            return "instypemodify";
        }
    }

    @RequestMapping("instypeDelete.do")
    public String instypeDelete(Integer id, HttpServletRequest request) throws SQLException {

        //获取原有乐器图片地址
        String picpath = instypeService.findInstypeById(id).getPicpath();

        //项目路径
        String picpathPrefix = request.getServletContext().getRealPath("/");

        Boolean b = instypeService.instypeDelete(id);

        //乐器删除后删除图片
        if(b){

            File file = new File(picpathPrefix + picpath);
            file.delete();

        }

        List<Instype> instypes = instypeService.instypeList();
        request.setAttribute("instypes", instypes);
        return "instypelist";
    }

    @RequestMapping("instypeInsert.do")
    public String instypeInsert(@RequestParam MultipartFile pic, Instype instype, HttpServletRequest request) throws SQLException, IOException {

        //进行图片上传并更名
        String picRealname = pic.getOriginalFilename();
        String picname = ImageUtil.setPicname();

        //项目路径
        String picpathPrefix = request.getServletContext().getRealPath("/");

        String picpath = "uploadimgs/instype/" + picname;

        //判断后缀是否为jpg
        if (ImageUtil.isJpg(picRealname)){

            File ToPicpath = new File(picpathPrefix + picpath);
            pic.transferTo(ToPicpath);

            //设置图片路径存入数据库
            instype.setPicpath(picpath);
        }

        Boolean b = instypeService.instypeInsert(instype);
        if (b){
            List<Instype> instypes = instypeService.instypeList();
            request.setAttribute("instypes", instypes);
            return "instypelist";
        }else {
            return "instypeinsert";
        }
    }

    @RequestMapping("instypeToInstrument.do")
    public String instypeToInstrument(Integer id, HttpServletRequest request) throws SQLException {
        List<Instrument> findInstruments = instypeService.findInstrumentByInstype(id);
        if (findInstruments != null){
            request.setAttribute("findInstruments", findInstruments);
            return "instypetoinstrument";
        }else {
            return "instypelist";
        }
    }

}
