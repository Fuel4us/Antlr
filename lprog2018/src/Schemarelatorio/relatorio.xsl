<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:="http://www.dei.isep.ipp.pt/lprog" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Relatório</title>
            </head>
            <body>
                <center><h1>Relatório</h1></center>
                <xsl:apply-templates select="relatorio/TpaginaRosto"/>
                <xsl:apply-templates select="relatorio/TCorpo"/>
            </body>
            </xsl:template>
</xsl:stylesheet>
