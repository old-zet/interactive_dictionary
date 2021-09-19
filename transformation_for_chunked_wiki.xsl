<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    exclude-result-prefixes="#all"
    version="2.0">
	
    <xsl:output method="text" encoding="UTF-8"/>
	
    <xsl:strip-space elements="*"/>
	
    <xsl:template match="page">
        <xsl:if test="contains(.,'=== {{S|verbe|fr}} ===')">
            <xsl:choose>
                <xsl:when test="contains(.,'.com')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,'.fr')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,'http')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,'néologisme|fr')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,': {{siècle|XXI}}')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,': {{rare|fr}}')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,': {{très rare|fr}}')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,': {{extrêmement rare|fr}}')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,': {{hapax|fr}}')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,': {{peu usité|fr}}')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
                <xsl:when test="contains(.,': {{peu attesté|fr}}')">
                    <xsl:apply-templates select="descendant::title"/>
                    <xsl:text>
</xsl:text>
                </xsl:when>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>