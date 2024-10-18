<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:ns0="http://bloquear_siniestro.wsbeans.iseries/">
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />

    <!-- Copy all elements and attributes -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Adjust specific elements or attributes if necessary -->
    <!-- For example, if you need to transform certain text nodes -->
    <xsl:template match="text()">
        <!-- Add any necessary transformations here -->
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>