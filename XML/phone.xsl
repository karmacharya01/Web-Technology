<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet 
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>
            <body>

                <h2>Phone Book</h2>

                <table border="1" cellpadding="5">

                    <tr bgcolor="lightgray">
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>Gender</th>
                        <th>Phone</th>
                        <th>City</th>
                    </tr>

                    <xsl:for-each select="phone/entries/entry">

                        <tr>

                            <td>
                                <xsl:value-of select="name/first"/>
                            </td>

                            <td>
                                <xsl:value-of select="name/middle"/>
                            </td>

                            <td>
                                <xsl:value-of select="name/last"/>
                            </td>

                            <td>
                                <xsl:value-of select="name/@gender"/>
                            </td>

                            <td>
                                <xsl:value-of select="phone"/>
                            </td>

                            <td>
                                <xsl:value-of select="city"/>
                            </td>

                        </tr>

                    </xsl:for-each>

                </table>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>