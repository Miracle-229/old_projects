
<?xml version="1.0" encoding="UTF-8"?>

-<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">


-<xsl:template match="/">


-<html>


-<body>

<h2>My Candies</h2>


-<table border="1">


-<tr bgcolor="#9acd32">

<th>Name</th>

<th>CandyID</th>

<th>Date</th>

<th>Energy</th>

<th>Chocolate Type</th>

</tr>


-<xsl:for-each select="candies/chocolate-candy">

<xsl:sort select="energy" data-type="number"/>


-<tr>


-<td>

<xsl:number format="1. " value="position()"/>

<xsl:value-of select="name"/>

</td>


-<td>

<xsl:value-of select="@id"/>

</td>


-<td>

<xsl:value-of select="date"/>

</td>


-<td>

<xsl:value-of select="energy"/>

</td>


-<td>

<xsl:value-of select="chocolate-type"/>

</td>

</tr>

</xsl:for-each>

</table>

<h3 style="margin:0">All energy: </h3>


-<h3 style="margin:0">

<xsl:value-of select="sum(//energy)"/>

</h3>

<h3 style="margin:0">Average energy: </h3>


-<h3 style="margin:0">

<xsl:value-of select="sum(//energy) div count(//energy)"/>

</h3>

<h3 style="margin:0">Max energy: </h3>


-<xsl:variable name="max">


-<xsl:for-each select="candies/chocolate-candy">

<xsl:sort select="energy"/>


-<xsl:if test="position() = 1">

<xsl:value-of select="energy"/>

</xsl:if>

</xsl:for-each>

</xsl:variable>


-<h3 style="margin:0">

<xsl:value-of select="$max"/>

</h3>

<h3 style="margin:0">Min energy: </h3>


-<xsl:variable name="min">


-<xsl:for-each select="candies/chocolate-candy">

<xsl:sort select="energy" order="descending"/>


-<xsl:if test="position() = 1">

<xsl:value-of select="energy"/>

</xsl:if>

</xsl:for-each>

</xsl:variable>


-<h3 style="margin:0">

<xsl:value-of select="$min"/>

</h3>

</body>

</html>

</xsl:template>

</xsl:stylesheet>