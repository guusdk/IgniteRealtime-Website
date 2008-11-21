<%@ page import="org.jivesoftware.site.Versions" %>
<%@ page import="com.jivesoftware.clearspace.webservices.BlogService" %>
<%@ page import="com.jivesoftware.clearspace.webservices.BlogPostResultFilter" %>
<%@ page import="com.jivesoftware.clearspace.webservices.BlogPost" %>
<%@ page import="java.util.List" %>

<%@ taglib uri="oscache" prefix="cache" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ include file="/includes/ws_locator.jspf" %>
<html>
<head>
<title>SparkWeb IM Client</title>
<meta name="body-id" content="projects" />
<meta name="panel-name" content="sparkweb" />
<style type="text/css" media="screen">
	@import "/styles/interior.css";
</style>
</head>
<body>

	<div id="ignite_subnav">
		<ul>
			<li id="subnav01"><a href="index.jsp" class="ignite_subnav_project">SparkWeb</a></li>
			<!--<li id="subnav02"><a href="screenshots.jsp">Screenshots</a></li>-->
			<!--<li id="subnav04"><a href="documentation.jsp">Documentation</a></li>-->
			<li id="subnav05"><a href="http://www.igniterealtime.org/issues/browse/SW">Issue Tracker</a></li>
            <li id="subnav06"><a href="../../roadmap.jsp">Roadmap</a></li>
        </ul>
	</div>

	<!-- BEGIN body area -->
	<div id="ignite_body">
		
		<!-- BEGIN left column (main content) -->
		<div id="ignite_body_leftcol">
			
			<!-- BEGIN large panel -->
			<!-- 
				if there is no cookie, show this panel
				(there is an 'onload' in the decorator that runs a script from 
				/scripts/ignite.js, may want to change that).
				the cookie is defined by the meta 'panel-name' in the head, and
				set with the onclick of the links below, closePanel().
			-->
			<% boolean panelCookieSet = false;
			   Cookie [] cookies = request.getCookies();
                           if (cookies != null) {
			             for (Cookie cookie: request.getCookies()) {
                                              if (cookie.getName().equals("sparkweb")) { 
						      panelCookieSet = true;
					      }
				     }
			   }
			%>
			<div id="ignite_bigpanel" <% if (!panelCookieSet) { %> style="display:block" <% } %>>
				<div id="ignite_bigpanel_content">
					<h1 class="sparkweb">SparkWeb <span><%= Versions.getVersion("sparkweb") %></span></h1>
					<p>SparkWeb is an Open Source, web-based IM client optimized for businesses and 
					organizations. It features built-in support for group chat and strong security. It
                                        also offers a great end-user experience with features like 
					group chat room bookmarks, and tabbed conversations.</p>
				</div>
				
				<div id="ignite_bigpanel_close">
					<a href="#" onClick="closePanel('sparkweb'); return false;"></a>
				</div>
				
				<!--<div id="ignite_bigpanel_screenshot">
					<img src="/images/ignite_projects_sparkweb_ss.gif" width="210" height="210" alt="" />
					<a href="screenshots.jsp">More screens</a>
				</div>-->
				<div id="ignite_bigpanel_tryitlive">
					<a href="/sparkweb/">Try it live!</a>
				</div>
				
				<div id="ignite_bigpanel_download">
					<a href="/downloads/index.jsp#sparkweb">Download</a> 
					<span>
						<strong>SparkWeb <%= Versions.getVersion("sparkweb") %></strong> Latest build: <%= Versions.getVersionDate("sparkweb")  %>
					</span>
				</div>
				
			</div>
			<!-- END large panel -->
			
			<!-- BEGIN small panel -->
			<!-- 
				if there is a cookie, show this panel
				(same details as above for 'large panel')
			-->
			<div id="ignite_smallpanel" <% if (panelCookieSet) { %> style="display:block" <% } %>>
				<h1 class="sparkweb">SparkWeb <span><%= Versions.getVersion("sparkweb") %></span></h1>
				<div id="ignite_smallpanel_open">
					<a href="#" onClick="closePanel('sparkweb'); return false;"></a>
				</div>
			</div>
			<!-- END small panel -->
			
			
			<!-- BEGIN home page body content area -->
			<div id="ignite_int_body">
				
                <% String blogFeedRSS = "/community/blogs/ignite/feeds/tags/sparkweb"; %>
				<!-- BEGIN 'latest blog entries' column -->
				<div id="ignite_int_body_widecol">
					<!-- BEGIN blog header -->
					<div id="ignite_blog_header">
						<span id="ignite_blog_header_label">
							Latest Blog Entries
						</span>
						<div style="float: right;">
                            <span id="ignite_blog_header_rss">
							 	<a href="<%= blogFeedRSS %>"><img src="/images/rss.gif" width="16" height="16" border="0" alt="" /></a>
							</span>
						</div>
					</div>
					<!-- END blog header -->
					<cache:cache time="600" key="<%= blogFeedRSS %>">
					<%
					BlogService blogService = serviceProvider.getBlogService();
					BlogPostResultFilter bprf = new BlogPostResultFilter();
					bprf.setNumResults(5);
                    bprf.setBlogID((long) NULL_INT);
                    bprf.setSortField(600); // publish date
                    bprf.setSortOrder(SORT_DESCENDING);
                    bprf.getTags().add("sparkweb");
                    List<BlogPost> posts = blogService.getBlogPostsWithFilter(bprf);
					%>
					<% request.setAttribute("posts", posts); %>
					<jsp:include page="/includes/blogposts.jsp" />
					</cache:cache>
				</div>
				<!-- END 'latest blog entries' column -->
				
			</div>
			<!-- END home page body content area -->
			
		</div>
		<!-- END left column (main content) -->
		
		<!-- BEGIN right column (sidebar) -->
		<div id="ignite_body_rightcol">
			
            <jsp:include page="/includes/sidebar_projectside.jsp">
                <jsp:param name="project" value="sparkweb"/>
            </jsp:include>

		</div>
		<!-- END right column (sidebar) -->
	
	</div>
	<!-- END body area -->



</body>
</html>