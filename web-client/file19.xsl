<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  exclude-result-prefixes="php">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Files in directory</h2>
        <p><strong>Return type of scandir:</strong>
          <xsl:value-of select="php:function('gettype', php:function('scandir', '/challenge/web-serveur/ch50/'))" />
        </p>

        <pre>
          <xsl:variable name="listing" select="php:function('scandir', '/challenge/web-serveur/ch50/')" />
          <xsl:value-of select="php:function('join', '&#10;', $listing)" />
        </pre>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
