<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>My CD Collection (<xsl:value-of select="count(/CATALOG/CD)"/> CDs Listed)</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Year</th>
                        <th>Country</th>
                        <th>Price</th>
                        <th>Company</th>
                    </tr>
                    <xsl:for-each select="/CATALOG/CD">
                        <xsl:sort select="COUNTRY"/>
                        <tr>
                            <td>
                                <xsl:value-of select="TITLE"/>
                            </td>
                            <td>
                                <xsl:value-of select="ARTIST"/>
                            </td>
                            <td>
                                <xsl:value-of select="YEAR"/>
                            </td>
                            <td>
                                <xsl:value-of select="COUNTRY"/>
                            </td>
                            <xsl:choose>
                                <xsl:when test="PRICE &gt; 10.0">
                                    <td bgcolor="FF0000">
                                        <xsl:value-of select="PRICE"/>
                                    </td>
                                </xsl:when>
                                <xsl:when test="PRICE &lt; 8.0">
                                    <td bgcolor="3AFF00">
                                        <xsl:value-of select="PRICE"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td bgcolor="FAFF00">
                                        <xsl:value-of select="PRICE"/>
                                    </td>
                                </xsl:otherwise> 
                            </xsl:choose>
                            <td>
                                <xsl:value-of select="COMPANY"/>
                            </td>

                            <!-- <xsl:choose>
                                <xsl:when test="PRICE &lt; 10.0">
                                    <td>
                                        <xsl:value-of select="TITLE"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="ARTIST"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="YEAR"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="COUNTRY"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="PRICE"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="COMPANY"/>
                                    </td>
                                </xsl:when>
                            </xsl:choose> -->
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
