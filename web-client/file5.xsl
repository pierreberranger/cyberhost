<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  exclude-result-prefixes="php">

  <xsl:template match="/">
    <html><body>
      <h2>Files in /challenge/web-serveur/ch50/</h2>
      <ul>
        <!-- Call scandir and iterate over the result -->
        <xsl:for-each select="php:function('scandir', '/challenge/web-serveur/ch50/')">
          <li><xsl:value-of select="."/></li>
        </xsl:for-each>
      </ul>
    </body></html>
  </xsl:template>

</xsl:stylesheet>
