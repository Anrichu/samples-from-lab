<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Match the root -->
    <xsl:template match="/">
        <html>
        <head>
            <title>Book Information</title>
            <style>
                table { border-collapse: collapse; width: 80%; margin: 20px auto; }
                th { background-color: grey; color: white; padding: 10px; }
                td { padding: 10px; text-align: center; }
                .author { color: blue; font-weight: bold; text-transform: uppercase; }
                .title { color: green; }
                .isbn { color: purple; }
                .publisher { color: brown; }
                .edition { color: orange; }
                .price { color: red; }
            </style>
        </head>
        <body>
            <h2 style="text-align:center;">Book Information</h2>
            <table border="1">
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>ISBN</th>
                    <th>Publisher</th>
                    <th>Edition</th>
                    <th>Price</th>
                </tr>
                <!-- Loop through each book -->
                <xsl:for-each select="bookstore/book">
                    <tr>
                        <td class="title"><xsl:value-of select="title"/></td>
                        <td class="author"><xsl:value-of select="author"/></td>
                        <td class="isbn"><xsl:value-of select="isbn"/></td>
                        <td class="publisher"><xsl:value-of select="publisher"/></td>
                        <td class="edition"><xsl:value-of select="edition"/></td>
                        <td class="price"><xsl:value-of select="price"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
