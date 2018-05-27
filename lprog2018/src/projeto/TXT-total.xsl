<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/Departamento">
        <xsl:text>Departamento de Informatica</xsl:text>
        <xsl:text>&#xa;</xsl:text>

        <xsl:apply-templates select="Sala"/>
    </xsl:template>

    <xsl:template match="Sala">
        <xsl:apply-templates select="./Local"/>
        <xsl:apply-templates select="./Mobilias"/>
        <xsl:apply-templates select="./Hardware"/>
        <xsl:apply-templates select="./EqEletrico"/>
        <xsl:apply-templates select="./CalLimpeza"/>
        <xsl:apply-templates select="./CalManutencao"/>
        <xsl:apply-templates select="./Avarias"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="Local">
        <xsl:text>&#xa;Sala: </xsl:text>
        <xsl:value-of select="./Local"/>
        <xsl:text>&#xa;&#xa;Area: </xsl:text>
        <xsl:value-of select="./Area"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="Mobilias">
        <xsl:text>&#xa;Mobilias:&#xa;</xsl:text>
        <xsl:apply-templates select="Mobilia"/>
    </xsl:template>

    <xsl:template match="Mobilia">
        <xsl:text>&#xa; Nome: </xsl:text>
        <xsl:value-of select="Nome"/>
        <xsl:text>&#xa; Quantidade: </xsl:text>
        <xsl:value-of select="Quantidade"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="Hardware">
        <xsl:text>&#xa;Hardware:</xsl:text>
        <xsl:apply-templates select="Equipamento"/>
    </xsl:template>

    <xsl:template match="EqEletrico">
        <xsl:text>&#xa;Equipamento Eletrico:</xsl:text>
        <xsl:apply-templates select="Equipamento"/>
    </xsl:template>

    <xsl:template match="Equipamento">
        <xsl:text>&#xa; Nome: </xsl:text>
        <xsl:value-of select="Nome"/>
        <xsl:text>&#xa; Quantidade: </xsl:text>
        <xsl:value-of select="Quantidade"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="CalLimpeza">
        <xsl:text>&#xa;Calendario Limpeza:</xsl:text>
        <xsl:apply-templates select="Data"/>
    </xsl:template>

    <xsl:template match="CalManutencao">
        <xsl:text>&#xa;Calendario Manutencao:</xsl:text>
        <xsl:apply-templates select="Data"/>
    </xsl:template>

    <xsl:template match="Data">
        <xsl:text>&#xa; Data: </xsl:text>
        <xsl:value-of select="./Dia"/><xsl:text>-</xsl:text>
        <xsl:value-of select="./Mes"/><xsl:text>-</xsl:text>
        <xsl:value-of select="./Ano"/><xsl:text>|</xsl:text>
        <xsl:value-of select="./Hora"/><xsl:text>:</xsl:text>
        <xsl:value-of select="./Minuto"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="Avarias">
        <xsl:text>&#xa;Avarias:</xsl:text>
        <xsl:apply-templates select="Avaria"/>
    </xsl:template>

    <xsl:template match="Avaria">
        <xsl:text>&#xa; Equipamento: </xsl:text>
        <xsl:value-of select="Equipamento"/>
        <xsl:text>&#xa; Descricao: </xsl:text>
        <xsl:value-of select="Descricao"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

</xsl:stylesheet>