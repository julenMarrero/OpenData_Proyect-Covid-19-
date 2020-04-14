<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : change.xsl
    Created on : 12 de abril de 2020, 22:36
    Author     : julenmarrero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common" 
                version="1.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/Liguilla">
        
        <records>
            
            <Jornada>
                 <xsl:for-each select="/Liguilla/Jornadas/Jornada/matches">
                <ganadores_locales>
                   
                        <player>
                            <xsl:value-of select="match[local/@goles &gt; visitante/@goles]/local"/>
                        </player>
                        <goles>
                            <xsl:value-of select="match[local/@goles &gt; visitante/@goles]/local/@goles"/>
                        </goles>
                      
                </ganadores_locales>
                <perdedores_locales>
                    <player>
                        <xsl:value-of select="match[local/@goles &lt; visitante/@goles]/local"/>
                    </player>
                    <goles>
                        <xsl:value-of select="match[local/@goles &lt; visitante/@goles]/local/@goles"/>
                    </goles>
                </perdedores_locales>
                <empate>
                    <player>
                        <xsl:value-of select="match[local/@goles = visitante/@goles]"/>
                    </player>
                    <goles>
                        <xsl:value-of select="match[local/@goles = visitante/@goles]/local/@goles"/>
                    </goles>
                </empate>
                <ganadores_away>
                    <player>
                        <xsl:value-of select="match[visitante/@goles &gt; local/@goles]/visitante"/>
                    </player>
                    <goles>
                        <xsl:value-of select="match[visitante/@goles &gt; local/@goles]/visitante/@goles"/>
                    </goles>
                </ganadores_away>
                <perdedores_away>
                    <player>
                        <xsl:value-of select="match[visitante/@goles &lt; local/@goles]/visitante"/>
                    </player>
                    <goles>
                        <xsl:value-of select="match[visitante/@goles &lt; local/@goles]/visitante/@goles"/>
                    </goles>
                </perdedores_away>
                </xsl:for-each> 
                
            </Jornada>
            
  
           
            
      
        </records>
    </xsl:template>
</xsl:stylesheet>