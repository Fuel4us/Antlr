<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/Departamento">
        <xsl:element name="Departamento">
            <xsl:apply-templates select="Sala/Hardware/Equipamento"/>
            <xsl:apply-templates select="Sala/EqEletrico/Equipamento"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="Equipamento">
        <xsl:if test="Quantidade &gt; 20">
            <xsl:element name="Equipamento">
                <xsl:element name="Nome">
                    <xsl:value-of select="Nome"/>
                </xsl:element>
                <xsl:element name="Quantidade">
                    <xsl:value-of select="Quantidade"/>
                </xsl:element>
                <xsl:element name="Sala">
                    <xsl:value-of select="../../Local/Local"/>
                </xsl:element>
            </xsl:element>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>