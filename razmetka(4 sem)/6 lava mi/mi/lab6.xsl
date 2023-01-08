<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
   
	<xsl:template match="/">
	    <html>
			<body>
			<h2>My Candies</h2>
			<table border="1">
				 <tr bgcolor="#9acd32">
				   <th>Name</th>
				   <th>Type</th>
				   <th>Date</th>
				   <th>Name-author</th>
				   <th>Age</th>
				   <th>Duration</th>
				 </tr>
				 <xsl:for-each select="music/musicstore">
				 <xsl:sort select="duration" data-type="number"/>				
				 <tr>
                                   
				   <td>
<xsl:number value="position()" format="1. "/>
<xsl:value-of select="name"/></td>
				   <td><xsl:value-of select="type"/></td>
				   <td><xsl:value-of select="date"/></td>
				   <td><xsl:value-of select="authors/author/author-name"/></td>
				   <td><xsl:value-of select="authors/author/author-age"/></td>
				   <td><xsl:value-of select="duration"/></td>
				 </tr>
				 </xsl:for-each>
		   </table>
		   <h3 style="margin:0">All duration: </h3>
		   <h3  style="margin:0"><xsl:value-of select ="sum(//duration)"/></h3>
		   <h3 style="margin:0">Average duration: </h3>
		   <h3  style="margin:0"><xsl:value-of select ="sum(//duration) div count(//duration)"/></h3>
		   
			<h3 style="margin:0">Min duration: </h3>
			
			<xsl:variable name="max">
				 <xsl:for-each select="music/musicstore">
					<xsl:sort select="duration"/>
					<xsl:if test="position() = 1"><xsl:value-of select="duration"/></xsl:if>
				  </xsl:for-each>
			</xsl:variable>
			
			
			
		   <h3  style="margin:0"><xsl:value-of select ="$max"/></h3>
		   	<h3 style="margin:0">Min duration: </h3>
		  
			</body>
	    </html>
	 </xsl:template>
</xsl:stylesheet>