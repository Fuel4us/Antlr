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
                            <th>CalLimpeza</th>
                            <th>CalManutencao</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <xsl:apply-templates select="Sala/CalLimpeza/Data">
                                    <xsl:sort select="Ano" data-type="number"/>
                                    <xsl:sort select="Mes" data-type="number"/>
                                    <xsl:sort select="Dia" data-type="number"/>
                                    <xsl:sort select="Hora" data-type="number"/>
                                    <xsl:sort select="Minuto" data-type="number"/>
                                </xsl:apply-templates>
                            </td>
                            <td>
                                <xsl:apply-templates select="Sala/CalManutencao/Data">
                                    <xsl:sort select="Ano" data-type="number"/>
                                    <xsl:sort select="Mes" data-type="number"/>
                                    <xsl:sort select="Dia" data-type="number"/>
                                    <xsl:sort select="Hora" data-type="number"/>
                                    <xsl:sort select="Minuto" data-type="number"/>
                                </xsl:apply-templates>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>CalLimpeza</th>
                            <th>CalManutencao</th>
                        </tr>
                    </tfoot>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="Data">
        <table class="table table-striped">
            <thead>
                <thead>
                    <tr>
                        <th>Data</th>
                        <th>Local</th>
                    </tr>
                </thead>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <xsl:value-of select="./Dia"/>-<xsl:value-of select="./Mes"/>-<xsl:value-of select="./Ano"/>
                        | <xsl:value-of select="./Hora"/>:<xsl:value-of select="./Minuto"/>
                    </td>
                    <td><xsl:value-of select="../../Local/Local"/></td>
                </tr>
            </tbody>
        </table>
    </xsl:template>

</xsl:stylesheet>