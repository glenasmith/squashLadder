

<g:pieChart type="3d"  
            title='Posts Per Day'  
            size="${[600,200]}" 
            labels="${allGames.keySet()}"  
            dataType='text'  
            data='${allGames.values().asList()}' /> 
