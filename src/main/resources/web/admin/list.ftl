<!DOCTYPE html>
<html lang="en">
<head>
	<title></title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/jblog.css">
</head>
<body>
<div class="admin-main">

    <#include "/inc/admin-left.ftl"/>
    <div class="admin-body">
        <div class="ul-head"><h2>BLOG列表</h2></div>
        <ul class="admin-ul">
            <#list listContent as content>
                <li class="admin-li">
                <#if content.postStatus == "publish">🔵<#else>🔴</#if>
                <#if content.postTitle?length gt 21>${content.postTitle?substring(0,20)}...
                <#else>${content.postTitle}</#if>
                <span class="float-right">
                <#if content.postStatus == "publish"><a class="li-btn">hide</a><#else><a class="li-btn">show</a></#if>
                <a class="li-btn">edit</a></span>
                <time class="float-right" datetime="${content.postDate?string('yyyy-MM-dd')}">${content.postDate?string('yyyy-MM-dd')}</time>
                
                </li>
            </#list>
        </ul>

        <div>
        <span>上一页</span>
        <span class="float-right">下一页</span>
        </div>

    </div>
</div>
<#include "/inc/foot.ftl"/>

</body>
</html>