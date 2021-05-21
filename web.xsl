<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/">
        <html lang="pl">
           <head>
              <meta charset="utf-8"/>
              <title>Firma</title>
              <link rel="stylesheet" type="text/css" href="web.css"/>           
        </head>
          <body>
             <img src="{concat('./', firm/logo)}"/>
            <header>
           <h1><xsl:value-of select="firm/name-firm"/></h1>  
            </header>
           <section>
            <h2>Informacje o firmie</h2>
             <div class="history">
                <h3>Historia</h3>
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
             <h3>Założyciel: <xsl:value-of select="firm/owner/name"/>
             <xsl:text> </xsl:text>
                <xsl:value-of select="firm/owner/surname"/></h3>
                </div>
            <div id="column">
           <div>
             <h3>Usługi: </h3>
                 <ul>
                    <xsl:for-each select="firm/service-list/service">
                        <li> <xsl:value-of select="."/> </li>
                    </xsl:for-each>
                </ul>
              </div>
              <div>
             <h3>Kontakt:</h3>
                <p>Tel: <xsl:value-of select="firm/tel"/></p>
                <p>Email:<a href="{concat('mailto:', firm/e-mail)}"> <xsl:value-of select="firm/e-mail"/></a></p>
                <p>Ul.<xsl:value-of select="firm/address/street"/> 
                <xsl:value-of select="firm/address/home"/></p>
                <p><xsl:value-of select="firm/address/town"/></p>
                <p><xsl:value-of select="firm/address/country-code"/></p>
     		</div>
            </div>
        </section>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>