<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  exclude-result-prefixes="php">

  <xsl:template match="/">
    <html><body>
      <h2>Files in directory (joined output)</h2>
      <pre>
<xsl:value-of select="php:function('join', php:function('scandir', '/challenge/web-serveur/ch50/'), '&#10;')"/>
      </pre>
    </body></html>
  </xsl:template>

</xsl:stylesheet>
