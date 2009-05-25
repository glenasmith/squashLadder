	
	<g:pieChart type="2d"  
	            title="${title}" 
	            size="${[300,230]}" 
				labels="${totals.keySet()}"
				dataType='text'  
	            data='${totals.values().asList()}'
				colors="7CA621"
				
	 			/>
	