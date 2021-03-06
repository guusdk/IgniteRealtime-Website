<%@ page import="org.jivesoftware.site.Versions"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<html>
<head>
<title>Support - Professional Partners</title>
<meta name="body-id" content="support" />
<style type="text/css" media="screen">
    @import "../styles/interior.css";
</style>
</head>
<body>

    <div id="ignite_subnav">
        <ul>
            <li id="subnav01"><a href="index.jsp" class="ignite_subnav_project">Support</a></li>
            <%--<li id="subnav02"><a href="articles.jsp">Articles</a></li>--%>
            <li id="subnav03"><a href="group_chat.jsp">Group Chat</a></li>
            <li id="subnav04"><a href="http://issues.igniterealtime.org/secure/Dashboard.jspa">Issue Tracker</a></li>
            <li id="subnav05"><a href="service_providers.jsp">Professional Partners</a></li>
        </ul>
    </div>

    <!-- BEGIN body area -->
    <div id="ignite_body">
        
        <!-- BEGIN left column (main content) -->
        <div id="ignite_body_leftcol">
            
            <!-- BEGIN body content area -->
            <div id="ignite_int_body">
            
                <!-- BEGIN body header -->
                <div id="ignite_body_header">
                    <h2>Professional Partners</h2>
                </div>
                <!-- END body header -->
                
                
                <div class="ignite_int_body_support">
                    
                    
                    <p>Get professional assistance for Openfire, Smack and Spark from the service
                        providers listed below, including support services, customizations,
                        and hosting.
                    </p>

                    <div class="ignite_service-provider">
                        <span class="ignite_service-provider_logo"><img src="../images/logo_smack.png" alt="Florian Schmaus" width="34" height="33" border="0"></span>
                        <h3>Florian Schmaus</h3>
                        <span class="ignite_service-provider_url"><a href="https://github.com/igniterealtime/Smack#professional-services">Smack Professional Services</a></span>
                        <p>
                            Provides paid services ranging from XMPP/Smack related consulting to designing
                            and developing features in order to accommodate your needs.
                        </p>
                    </div>

                    <div class="ignite_service-provider">
                        <span class="ignite_service-provider_logo"><img src="../images/logo-goodbytes-32.png" alt="GoodBytes" width="32" height="32" border="0"></span>
                        <h3>GoodBytes</h3>
                        <span class="ignite_service-provider_url"><a href="https://www.goodbytes.nl/ignite.html">goodbytes.nl</a></span>
                        <p>
                            GoodBytes specializes in Openfire development and integration challenges,
                            and provides installation, configuration, and maintenance services.
                        </p>
                    </div>
                    
                    <div class="ignite_service-provider">
                        <span class="ignite_service-provider_logo"><img src="../images/logo_ihive.svg" alt="Industrious Hive" width="56" height="32" border="0"></span>
                        <h3>Industrious Hive</h3>
                        <span class="ignite_service-provider_url"><a href="https://industrioushive.com/">industrioushive.com</a></span>
                        <p>
                            Industrious Hive offers a commercial version of Openfire with P�d� called BeeKeeper. We provide professional services which includes consulting, software development, integration, installation, configuration and maintenance services.
                        </p>
                    </div>                    

                    <div class="ignite_service-provider">
                        <span class="ignite_service-provider_logo"><img src="../images/logo_v2_small.gif" alt="Version 2 Software" width="45" height="32" border="0"></span>
                        <h3>Version 2 Software</h3>
                        <span class="ignite_service-provider_url"><a href="http://www.version2software.com">www.version2software.com</a></span>
                        <p>Version 2 Software creates custom software solutions, specializing in the
                            customization and integration of Openfire and Spark. Version 2 Software
                            has developed a number of Openfire and Spark plugins for both the Ignite
                            Realtime community and private organizations.
                        </p>
                    </div>


                    <p>&nbsp;</p>
                    
                </div>
            
            
            </div>
            <!-- END body content area -->
            
        </div>
        <!-- END left column (main content) -->
        
        <!-- BEGIN right column (sidebar) -->
        <div id="ignite_body_rightcol">
            
            
            <%@ include file="/includes/sidebar_enterprise.jspf" %>
            
            <%@ include file="/includes/sidebar_48hrsnapshot.jspf" %>

            <%@ include file="/includes/sidebar_chat.jspf" %>

        </div>
        <!-- END right column (sidebar) -->
    
    </div>
    <!-- END body area -->



</body>
</html>
