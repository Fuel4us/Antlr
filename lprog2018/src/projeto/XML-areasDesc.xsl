<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/Departamento">
        <xsl:element name="SalasPorArea">
            <xsl:apply-templates select="Sala">
                    <xsl:sort select="Local/Area" data-type="number" order="descending"/>
            </xsl:apply-templates>
        </xsl:element>
    </xsl:template>

    <xsl:template match="Sala">
        <xsl:element name="Sala">
            <xsl:apply-templates select="Local"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="Local">
        <xsl:element name="Numero">
            <xsl:value-of select="Local"/>
        </xsl:element>
        <xsl:element name="Area">
            <xsl:value-of select="Area"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>