<%@page import="com.rainboyan.groller.util.RequestUtils"%>
                    <div class="yourWeblogBox">
                        <span class="mm_weblog_name"><img src="${resource(dir:'images', file:'folder.png')}" />&nbsp;${blog.name}</span>
                        <table class="mm_table" width="100%" cellpadding="0" cellspacing="0">
                           <tr>
                           <td valign="top">
                               <table cellpadding="0" cellspacing="0">
                                   <tr>
                                       <td class="mm_subtable_label">链接</td>
                                       <td><a href="${createLink(controller:'blog',action:'show',params:[blog:blog.handle])}">
                                           <%= RequestUtils.getAbsoluteUrl(request)%>/${blog.handle}
                                       </a></td>
                                   </tr>

                                   <tr>
                                       <td class="mm_subtable_label">许可协议</td>

                                       <td>ADMIN</td>
                                   </tr>

                                   <tr>
                                       <td class="mm_subtable_label">描述</td>
                                       <td>${blog.description}</td>
                                   </tr>

                                   <tr>
                                       <td class="mm_subtable_label">Members:</td>
                                       <td>0</td>
                                   </tr>

                                   <tr>
                                       <td class="mm_subtable_label">Today's hits:</td>
                                       <td>0</td>

                                   </tr>

                               </table>
                           </td>

                           <td class="mm_table_actions" width="20%" align="left" >
                               <img src="${resource(dir:'images', file:'table_edit.png')}" />
                               <a href="${createLink(controller:'entry',action:'create',params:[weblog:blog.handle])}">新日志</a>
                               <br />

                               <img src="${resource(dir:'images', file:'table_multiple.png')}" />
                               <a href="${createLink(controller:'entry',action:'list',params:[weblog:blog.handle])}">日志 ()</a>
                               <br />

                               <img src="${resource(dir:'images', file:'page_white_edit.png')}" />
                               <a href="${createLink(controller:'comment',action:'list',params:[weblog:blog.handle])}">评论 ()</a>
                               <br />

                               <img src="${resource(dir:'admin/images', file:'layout.png')}" />
                               <a href='${request.contextPath}/admin/authoring/themeEdit'>Theme</a>
                               <br />

                               <img src="${resource(dir:'images', file:'cog.png')}" />
                               <a href="${createLink(controller:'blog',action:'edit',params:[weblog:blog.handle])}">设置</a>
                               <br />

                           </td>
                           </tr>
                        </table>

                    </div>