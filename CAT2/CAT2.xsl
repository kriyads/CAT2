<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
            div
            {
                text-align:center; 
                width:48%;
                border:2px solid black;
            }
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Student details</h1>
                    <table border="2" align="center">
                        <tr bgcolor="lightblue">
                            <th style="text-align:left">STU-NAME</th>
                            <th style="text-align:left">STU-BRANCH</th>
                            <th style="text-align:left">STU-COLLEGE</th>
                        </tr>
                        <xsl:for-each select="CHRIST/CS">
                            <tr>
                                <td>
                                    <xsl:value-of select="STU-NAME"/>
                                </td>
                                <td>
                                    <xsl:value-of select="STU-BRANCH"/>
                                </td>
                                <td>
                                    <xsl:value-of select="STU-COLLEGE"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
