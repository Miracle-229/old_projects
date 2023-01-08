<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
  <body>
    <h2>Files</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>№</th>
        <th>location</th>
        <th>title</th>
        <th>format</th>
        <th>size</th>
        <th>year</th>
      </tr>
      <xsl:for-each select="candies/chocolate-candy">
      <xsl:sort select="energy" data-type="number"/>
      <xsl:if test="year > 2007">
      <!-- order="ascending | descending" -->
      <tr>
        <td><xsl:number/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="@id"/></td>
        <td><xsl:value-of select="date"/></td>
        <td><xsl:value-of select="energy"/></td>
        <td><xsl:value-of select="chocolate-type"/></td>
      </tr>
    </xsl:if>
      </xsl:for-each>
      <xsl:for-each select="local_files">
      <tr>
        <td>средний размер:<xsl:value-of select="sum(child::file/size) div count(child::file/size)"/></td>
      </tr>
      </xsl:for-each>
       <xsl:for-each select="local_files/file">
      <xsl:sort select="size" data-type="number"/>
      <tr>
        <xsl:if test="position()=last()">
                <td> Max:<xsl:value-of select="size"/></td>
        </xsl:if>
        <xsl:if test="position()=1">
                <td> Min:<xsl:value-of select="size"/></td>
        </xsl:if>
      </tr>
      </xsl:for-each>      
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>