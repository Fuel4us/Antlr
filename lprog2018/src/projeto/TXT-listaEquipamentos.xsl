<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/Departamento">
        <xsl:text>Lista de Equipamentos</xsl:text>
        <xsl:text>&#xa;</xsl:text>

        <xsl:apply-templates select="Sala"/>
    </xsl:template>

    <xsl:template match="Sala">
        <xsl:apply-templates select="./Local"/>
        <xsl:apply-templates select="./Hardware/Equipamento"/>
        <xsl:apply-templates select="./EqEletrico/Equipamento"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="Local">
        <xsl:text>&#xa;Sala: </xsl:text>
        <xsl:value-of select="./Local"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="Equipamento">
        <xsl:text>&#xa; Nome: </xsl:text>
        <xsl:value-of select="Nome"/>
        <xsl:text>&#xa; Quantidade: </xsl:text>
        <xsl:value-of select="Quantidade"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

</xsl:stylesheet>