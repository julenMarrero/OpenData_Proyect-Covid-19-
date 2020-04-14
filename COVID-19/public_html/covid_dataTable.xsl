<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:dc="otherchartCOVID.xml"
                xmlns="https://opendata.ecdc.europa.eu/covid19/casedistribution/xml/"
                version="1.0">
                
                <!-- espacio de nombre del otherchartCovid...-->
                
                
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

                <!-- Popper JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
                <link rel="stylesheet" src="css/"/>
                <title>covid_dataTable.xsl</title>
            </head>
       
            <body>
                <h2 style="text-align:center">COVID-19 worldwide data</h2>
                <table class="table">
                    <tr>
                        <th style="text-align:left">País</th>
                        <th style="text-align:left">Casos</th>
                        <th style="text-align:left">Muertes</th>
                        
                    </tr>
                    <xsl:for-each select="/records/record/">
                        <tr>
                            <td>
                                <xsl:value-of select="countriesAndTerritories"/>
                            </td>
                            <td>
                                <xsl:value-of select="cases"/>
                            </td>
                                <xsl:value-of select="deaths"/>
                            </td>
                                <xsl:value-of select="cases"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
</xsl:template>

</xsl:stylesheet>
