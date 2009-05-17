

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Player List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Player</g:link></span><span class="menuButton"><g:link class="create" controller="game" action="create">New Game</g:link></span>
        </div>
        <div class="body">
            <h1>Ladder</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                        
                   	        <g:sortableColumn property="name" title="Name" />
                        
                   	        
                        
                   	        <g:sortableColumn property="gamesPlayed" title="Games Played" />
                        
                   	        <g:sortableColumn property="gamesWon" title="Games Won" />

							<g:sortableColumn property="percentage" title="Winning Percentage" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${playerInstanceList}" status="i" var="playerInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${playerInstance.id}">${fieldValue(bean:playerInstance, field:'name')}</g:link></td>
                        
                          
                        
                            <td>${fieldValue(bean:playerInstance, field:'gamesPlayed')}</td>
                        
                            <td>${fieldValue(bean:playerInstance, field:'gamesWon')}</td>

							<td>${fieldValue(bean:playerInstance, field:'percentage')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${playerInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
