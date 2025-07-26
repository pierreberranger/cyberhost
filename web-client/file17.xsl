<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  exclude-result-prefixes="php">

  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
      <body>
        <h2>Files in directory</h2>
        <pre>
<xsl:value-of select="php:function('implode', ' ', php:function('scandir', '.'))" />
        </pre>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
