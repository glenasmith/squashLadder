

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="admin" />
        <title>Create Player</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Ladder</g:link></span>
        </div>
        <div class="body">
            <h1>Create Player</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${playerInstance}">
            <div class="errors">
                <g:renderErrors bean="${playerInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name">Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:playerInstance,field:'name','errors')}">
                                    <input type="text" id="name" name="name" value="${fieldValue(bean:playerInstance,field:'name')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email">Email:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:playerInstance,field:'email','errors')}">
                                    <input type="text" id="email" name="email" value="${fieldValue(bean:playerInstance,field:'email')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="gamesPlayed">Games Played:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:playerInstance,field:'gamesPlayed','errors')}">
                                    <input type="text" id="gamesPlayed" name="gamesPlayed" value="${fieldValue(bean:playerInstance,field:'gamesPlayed')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="gamesWon">Games Won:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:playerInstance,field:'gamesWon','errors')}">
                                    <input type="text" id="gamesWon" name="gamesWon" value="${fieldValue(bean:playerInstance,field:'gamesWon')}" />
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
