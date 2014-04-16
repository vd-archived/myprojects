<#if clientList??>
<table>
<#list clientList as client>
<tr>
<td>${client.name}</td>
<td>${client.details}</td>
<td>${statusList(client.status?short)}</td>
<td><a href="clientupdate?id=${client.id}"><img src="${webroot}admin/images/edit.png" /></a></td>
</tr>
</#list>
</table>
</#if> 