<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
<div>Add new user</div>
<div>
    ${message}
</div>
<@l.login "/registration" />
</@c.page>