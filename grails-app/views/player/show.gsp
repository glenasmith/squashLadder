

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="stats" />
        <title>Show Player</title>
    </head>
    <body>
    
        <div class="body">
            <h1>${fieldValue(bean:playerInstance, field:'name')}'s Stats</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
    
                       
                        <tr class="prop">
                            <td valign="top" class="name">Games Played:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:playerInstance, field:'gamesPlayed')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Games Won:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:playerInstance, field:'gamesWon')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
 
	
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${playerInstance?.id}" />
					<span class="button"><g:link class="create" action="create">New Player</g:link></span>
					<span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
