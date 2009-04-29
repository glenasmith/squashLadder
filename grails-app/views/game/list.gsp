

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Game List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Game</g:link></span>
        </div>
        <div class="body">
            <h1>Game List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="datePlayed" title="Date Played" />
                        
                   	        <th>Winner</th>
                   	    
                   	        <th>Loser</th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${gameInstanceList}" status="i" var="gameInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${gameInstance.id}">${fieldValue(bean:gameInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:gameInstance, field:'datePlayed')}</td>
                        
                            <td>${fieldValue(bean:gameInstance, field:'winner')}</td>
                        
                            <td>${fieldValue(bean:gameInstance, field:'loser')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${gameInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
