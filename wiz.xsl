<?xml version="1.0" encoding="UTF-8"?>
      <xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/">
    <html lang="pl">
    	<head>
    		<meta charset="utf-8"/>
    		<title>Wizytowka</title>
            <link rel="stylesheet" type="text/css" href="wiz.css"/>
    	</head>
    	<body>
         <div>
    	  <img src="{concat('./', firm/logo)}"/>
          <h1><xsl:value-of select="firm/name-firm"/></h1>  
           <p>Tel: <xsl:value-of select="firm/tel"/></p>
           <p>Email: <xsl:value-of select="firm/e-mail"/></p>
            </div>
    	</body>
	</html>
    </xsl:template>
</xsl:stylesheet>