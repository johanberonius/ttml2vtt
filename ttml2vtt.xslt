<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:tt="http://www.w3.org/2006/10/ttaf1">
<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
<xsl:template match="/tt:tt">WEBVTT<xsl:text>

</xsl:text>
<xsl:for-each select=".//tt:p[@begin][@end]">
<xsl:value-of select="@begin" />0<xsl:text> --> </xsl:text><xsl:value-of select="@end" />0<xsl:text>
</xsl:text>
<xsl:apply-templates /><xsl:text>

</xsl:text>
</xsl:for-each>
</xsl:template>
<xsl:template match="tt:i"><![CDATA[<i>]]><xsl:apply-templates /><![CDATA[</i>]]></xsl:template>
<xsl:template match="tt:br"><xsl:text>
</xsl:text></xsl:template>
<xsl:template match="text()"><xsl:value-of select="normalize-space(.)" /></xsl:template>
</xsl:stylesheet>