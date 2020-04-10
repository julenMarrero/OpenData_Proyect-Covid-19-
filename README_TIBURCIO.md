Buenas Tiburcio,


Tengo problemas con identificar un solo elemento en este xml que he cogido, lo que quiero es hacer una tabla con lo siguiente:
  -Coger un pais 
  -y su codigo
  -coger los casos y sumarlos para devolverlos en un total,
  -las muertes igual

El caso es que al ser por día los registros del XML(récord en el XML que te adjunto)  no se como coger 
cada país sin que se repita, sumar los casos de cada país sin sumar todos los países..

este es el link al XML:

https://opendata.ecdc.europa.eu/covid19/casedistribution/xml/

me quedo en 

<xsl:for-each select="/records/record/">
  <tr>
     <td>
       <xsl:value-of select="countriesAndTerritories"/> <!--me devolverá la suma de todos los textos countriesAndTerritories-->
     </td>                          
     <td>
       <xsl:value-of select="cases"/> 
     </td>
       <xsl:value-of select="deaths"/>
     </td>
       <xsl:value-of select=""/>  <!--<porcentaje casos/muertes-->
     </td>                       
  </tr>
</xsl:for-each>

No se si se pueden coger esos registros y directamente buscar otro XML mas valido

Saludos, Gracias.


