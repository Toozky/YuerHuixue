package com.yuerhuixue.util;

import java.util.UUID;

public class ImageUtil {

    /**
     * 使用uuid创建不重复文件名
     * @return
     */
    public static String setPicname(){

        String uuid = UUID.randomUUID().toString().replace("-", "");
        String picName = uuid + ".jpg";
        return picName;

    }

    /**
     * 判断是否为jpg文件
     * @param picName
     * @return
     */
    public static Boolean isJpg(String picName) {

        String suffix = picName.substring(picName.lastIndexOf(".") + 1);
        if(suffix.equalsIgnoreCase("jpg")||suffix.equalsIgnoreCase("jpeg")) {
            return true;
        }else {
            return false;
        }
    }

}
