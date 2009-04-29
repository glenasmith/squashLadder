

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Game</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Game List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Game</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${gameInstance}">
            <div class="errors">
                <g:renderErrors bean="${gameInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="datePlayed">Date Played:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:gameInstance,field:'datePlayed','errors')}">
                                    <g:datePicker name="datePlayed" value="${gameInstance?.datePlayed}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="winner">Winner:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:gameInstance,field:'winner','errors')}">
                                    <g:select optionKey="id" from="${Player.list()}" name="winner.id" value="${gameInstance?.winner?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="loser">Loser:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:gameInstance,field:'loser','errors')}">
                                    <g:select optionKey="id" from="${Player.list()}" name="loser.id" value="${gameInstance?.loser?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
