<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
<di class="mb-1">Add new user</div>
<#if message?has_content>
    <div>
    ${message}
    </div>
</#if>
<@l.login "/registration" true />
</@c.page>
