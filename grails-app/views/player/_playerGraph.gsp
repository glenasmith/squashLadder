	<g:pieChart type="2d"  
	            title='Games Won'  
	            size="${[300,230]}" 
				labels="${winnersTotals.keySet()}"
				dataType='text'  
	            data='${winnersTotals.values().asList()}'
				colors="7CA621"
				
	 			/>