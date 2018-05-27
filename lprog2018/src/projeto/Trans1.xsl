<?xml version="1.0" encoding="UTF-8"?>

    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:output method="html"/>

        <xsl:template match="/Departamento">
            <html>
                <head>
                    <title>Departamento de Informática</title>
                    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"/>
                </head>
                <body>
                    <table class="table table-striped">
                        <thead>
                            <tr>
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
                            <tr>
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
            <td><xsl:apply-templates select="./Mobilias"/></td>
            <td><xsl:apply-templates select="./Hardware"/></td>
            <td><xsl:apply-templates select="./EqEletrico"/></td>
            <td><xsl:apply-templates select="./CalLimpeza"/></td>
            <td><xsl:apply-templates select="./CalManutencao"/></td>
            <td><xsl:apply-templates select="./Avarias"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="Local">
        <table class="table table-striped">
            <thead>
                <thead>
                    <tr>
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

    <xsl:template match="Mobilias">
        <table class="table table-striped">
            <thead>
                <thead>
                    <tr bgcolor="#83CFF3">
                        <th>Nome</th>
                        <th>Quantidade</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <xsl:apply-templates select="./Mobilia"/>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="Mobilia">
        <tr>
            <td><xsl:value-of select="./Nome"/></td>
            <td><xsl:value-of select="./Quantidade"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="Hardware">
        <table class="table table-striped">
            <thead>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Quantidade</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <xsl:apply-templates select="./Equipamento"/>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="EqEletrico">
        <table class="table table-striped">
            <thead>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Quantidade</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <xsl:apply-templates select="./Equipamento"/>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="Equipamento">
        <tr>
            <td><xsl:value-of select="./Nome"/></td>
            <td><xsl:value-of select="./Quantidade"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="CalLimpeza">
        <table class="table table-striped">
            <thead>
                <thead>
                    <tr bgcolor="#83CFF3">
                        <th>Data</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <xsl:apply-templates select="./Data"/>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="CalManutencao">
        <table class="table table-striped">
            <thead>
                <thead>
                    <tr>
                        <th>Data</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <xsl:apply-templates select="./Data"/>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="Data">
        <tr>
            <td>
                <xsl:value-of select="./Dia"/>-<xsl:value-of select="./Mes"/>-<xsl:value-of select="./Ano"/>
                | <xsl:value-of select="./Hora"/>:<xsl:value-of select="./Minuto"/>
            </td>
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

</xsl:stylesheet>