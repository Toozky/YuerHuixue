package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.pojo.Instype;
import com.yuerhuixue.service.InstrumentService;
import com.yuerhuixue.service.InstypeService;
import com.yuerhuixue.util.ImageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class InstrumentController {

    @Autowired
    @Qualifier("instrumentServiceImpl")
    private InstrumentService instrumentService;

    @Autowired
    @Qualifier("instypeServiceImpl")
    private InstypeService instypeService;

    @RequestMapping("instrumentList.do")
    public String instrumentList(HttpServletRequest request) throws SQLException{

        List<Instrument> instruments = instrumentService.instrumentList();
        request.setAttribute("instruments", instruments);
        return "instrumentlist";

    }

    @RequestMapping("instrumentModifyPage.do")
    public String instrumentModifyPage(Integer id, HttpServletRequest request) throws SQLException {

        List<Instype> instypes = instypeService.instypeList();
        request.setAttribute("instypes", instypes);

        Instrument instrumentById = instrumentService.findInstrumentById(id);
        if (instrumentById != null){
            request.setAttribute("instrument", instrumentById);
            return "instrumentmodify";
        }else {
            return "instrumentlist";
        }

    }

    @RequestMapping("instrumentModify.do")
    public String instrumentModify(@RequestParam MultipartFile pic, Instrument instrument, HttpServletRequest request) throws SQLException, IOException {

        if (pic.getOriginalFilename() != ""){
            //获取乐器原有图片地址
            String picpathBefore = instrumentService.findInstrumentById(instrument.getId()).getPicpath();

            //项目路径
            String picpathPrefix = request.getServletContext().getRealPath("/");

            File fileBefore = new File(picpathPrefix + picpathBefore);

            //删除原有乐器图片
            fileBefore.delete();
            instrument.setPicpath(null);

            //进行图片上传并更名
            String picRealname = pic.getOriginalFilename();
            String picname = ImageUtil.setPicname();

            String picpath = "uploadimgs/instrument/" + picname;

            //判断后缀是否为jpg
            if (ImageUtil.isJpg(picRealname)){

                File ToPicpath = new File(picpathPrefix + picpath);
                pic.transferTo(ToPicpath);

                //设置图片路径存入数据库
                instrument.setPicpath(picpath);
            }
        }else {
            String path = instrumentService.findInstrumentById(instrument.getId()).getPicpath();
            instrument.setPicpath(path);
        }

        Boolean b = instrumentService.instrumentModify(instrument);
        if (b){
            List<Instrument> instruments = instrumentService.instrumentList();
            request.setAttribute("instruments", instruments);
            return "instrumentlist";
        }else {
            return "instrumentmodify";
        }

    }

    @RequestMapping("instrumentDelete.do")
    public String instrumentDelete(Integer id, HttpServletRequest request) throws SQLException {

        //获取原有乐器图片地址
        String picpath = instrumentService.findInstrumentById(id).getPicpath();

        //项目路径
        String picpathPrefix = request.getServletContext().getRealPath("/");

        Boolean b = instrumentService.instrumentDelete(id);

        //乐器删除后删除图片
        if(b){

            File file = new File(picpathPrefix + picpath);
            file.delete();

        }

        List<Instrument> instruments = instrumentService.instrumentList();
        request.setAttribute("instruments", instruments);
        return "instrumentlist";
    }

    @RequestMapping("instrumentInsertPage.do")
    public String instrumentInsertPage(HttpServletRequest request) throws SQLException {

        List<Instype> instypes = instypeService.instypeList();
        request.setAttribute("instypes", instypes);
        return "instrumentinsert";

    }

    @RequestMapping("instrumentInsert.do")
    public String instrumentInsert(@RequestParam MultipartFile pic, Instrument instrument, HttpServletRequest request) throws SQLException, IOException {

        //进行图片上传并更名
        String picRealname = pic.getOriginalFilename();
        String picname = ImageUtil.setPicname();

        //项目路径
        String picpathPrefix = request.getServletContext().getRealPath("/");

        String picpath = "uploadimgs/instrument/" + picname;

        //判断后缀是否为jpg
        if (ImageUtil.isJpg(picRealname)){

            File ToPicpath = new File(picpathPrefix + picpath);
            pic.transferTo(ToPicpath);

            //设置图片路径存入数据库
            instrument.setPicpath(picpath);
        }

        Boolean b = instrumentService.instrumentInsert(instrument);
        if (b){
            List<Instrument> instruments = instrumentService.instrumentList();
            request.setAttribute("instruments", instruments);
            return "instrumentlist";
        }else {
            return "instrumentinsert";
        }
    }

    @RequestMapping("instrumentInfo.do")
    public String instrumentInfo(HttpServletRequest request) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));

        Instrument instrument = instrumentService.findInstrumentById(id);
        request.setAttribute("instrument", instrument);

        return "instrumentinfo";
    }

    @RequestMapping("userShoppingCart.do")
    public String userShoppingCart(HttpServletRequest request, HttpSession session) throws SQLException {

        //判断用户是否登录
        if (session.getAttribute("user") != null){

            //根据id查找乐器
            int id = Integer.parseInt(request.getParameter("id"));

            Instrument shoppingCart = instrumentService.findInstrumentById(id);

            request.setAttribute("shoppingCart", shoppingCart);
            return "usershoppingcart";

        }else {
            return "userlogin";
        }

    }

}
