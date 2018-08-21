<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    <@l.logout />
</div>

        <div>
            <form method="post">
                <input type="text" name="text" placeholder="Введіть повідомлення" />
                <input type="text" name="tag" placeholder="tag" />
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit">Добавити</button>
            </form>
        </div>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
</div>
<#else>
No message
</#list>
</@c.page>