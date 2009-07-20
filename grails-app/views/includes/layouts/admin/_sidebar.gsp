            <div id="adminMenu">
                <div class="section">
                    <a class="headerOpen" id="admin.usersgroups" href="#" title="Click to hide or show Users, Groups & Roles menu" onclick="toggleMenu('admin.usersgroups');return false;">Users & Roles</a>
                    <ul id="admin.usersgroups_body">
                        <li><a id="user_browser" href="${createLink(controller:'user',action:'list')}">User Browser</a></li>
                        <li><a id="role_browser" href="${createLink(controller:'role',action:'list')}">Role Browser</a></li>
                    </ul>
                </div>
                <script language="JavaScript" type="text/javascript">
                <!--
                    restoreMenu('admin.usersgroups');
                //-->
                </script>
                <div class="section">
                    <a class="headerOpen" id="admin.contentmanagement" href="#" title="Click to hide or show Content Management menu" onclick="toggleMenu('admin.contentmanagement');return false;">Content</a>
                    <ul id="admin.contentmanagement_body">
                        <li><a id="content_entries" href="${createLink(controller:'entry',action:'list')}">Entries</a></li>
                        <li><a id="content_categories" href="${createLink(controller:'category',action:'list')}">Categories</a></li>
                        <li><a id="content_tags" href="${createLink(controller:'tag',action:'list')}">Tags</a></li>
                    </ul>
                </div>
                <script language="JavaScript" type="text/javascript">
                <!--
                    restoreMenu('admin.contentmanagement');
                //-->
                </script>
                <div class="section">
                    <a class="headerOpen" id="admin.systemsettings" href="#" title="Click to hide or show System Settings menu" onclick="toggleMenu('admin.systemsettings');return false;">System Settings</a>
                    <ul id="admin.systemsettings_body">
                        <li><a id="system_properties" href="${createLink(controller:'system',action:'list')}">System Properties</a></li>
                    </ul>
                </div>
                <script language="JavaScript" type="text/javascript">
                <!--
                    restoreMenu('admin.systemsettings');
                //-->
                </script>
            </div>