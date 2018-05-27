<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/Departamento">
        <html>
            <head>
                <title>Departamento</title>
            </head>
            <body>
                <table border="1">
                    <thead>
                        <tr bgcolor="#9acd32">
                            <th>Local</th>
                            <th>Mobilia</th>
                            <th>Hardware</th>
                            <th>EqEletrico</th>
                            <th>CalLimpeza</th>
                            <th>CalManutencao</th>
                            <th>Avarias</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="Sala"/>
                    </tbody>
                    <tfooter>
                        <tr bgcolor="#9acd32">
                            <th>Local</th>
                            <th>Mobilia</th>
                            <th>Hardware</th>
                            <th>EqEletrico</th>
                            <th>CalLimpeza</th>
                            <th>CalManutencao</th>
                            <th>Avarias</th>
                        </tr>
                    </tfooter>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="Sala">
        <tr>
            <td><xsl:apply-templates select="./Local"/></td>
            <td><xsl:apply-templates select="./Mobilia"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="Local">
        <table>
            <thead>
                <thead>
                    <tr bgcolor="#83CFF3">
                        <th>Local</th>
                        <th>Area</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <tr>
                    <td><xsl:value-of select="./Local"/></td>
                    <td><xsl:value-of select="./Area"/></td>
                </tr>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="Mobilia">
        <table>
            <thead>
                <thead>
                    <tr bgcolor="#83CFF3">
                        <th>Mobilia</th>
                        <th>Quantidade</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <tr>
                    <td><xsl:value-of select="./Mobilia"/></td>
                    <td><xsl:value-of select="./Quantidade"/></td>
                </tr>
            </tbody>
        </table>
    </xsl:template>

</xsl:stylesheet>