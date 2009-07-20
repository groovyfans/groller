package com.rainboyan.groller.util

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

class RequestUtils {
    
     public static String getAbsoluteUrl(HttpServletRequest request) {
        
        String url = null;
        
        String fullUrl = request.getRequestURL().toString();
        
        // if the uri is only "/" then we are basically done
        if("/".equals(request.getRequestURI())) {
            return fullUrl.substring(0, fullUrl.length()-1);
        }
        
        // find first "/" starting after hostname is specified
        int index = fullUrl.indexOf("/", fullUrl.indexOf(request.getServerName()));
        
        // extract just the part leading up to uri
        url = fullUrl.substring(0, index);
        
        // then just add on the context path
        url += request.getContextPath();
        
        // make certain that we don't end with a /
        if(url.endsWith("/")) {
            url = url.substring(0, url.length()-1);
        }
        
        return url;
    }
}
