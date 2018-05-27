<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/Departamento">
        <html>
            <head>
                <title>Lista de Avarias</title>
                <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"/>
            </head>
            <body>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Avarias</th>
                            <th>Sala</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="Sala"/>
                    </tbody>
                    <tfooter>
                        <tr>
                            <th>Avarias</th>
                            <th>Sala</th>
                        </tr>
                    </tfooter>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="Sala">
        <tr>
            <td><xsl:apply-templates select="./Avarias"/></td>
            <td><xsl:apply-templates select="./Local"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="Avarias">
        <table class="table table-striped">
            <thead>
                <thead>
                    <tr>
                        <th>Equipamento</th>
                        <th>Descricao</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <xsl:apply-templates select="./Avaria"/>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="Avaria">
        <tr>
            <td><xsl:value-of select="./Equipamento"/></td>
            <td><xsl:value-of select="./Descricao"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="Local">
        <table class="table table-striped">
            <thead>
                <thead>
                    <tr>
                        <th>Local</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <tr>
                    <td><xsl:value-of select="./Local"/></td>
                </tr>
            </tbody>
        </table>
    </xsl:template>

</xsl:stylesheet>