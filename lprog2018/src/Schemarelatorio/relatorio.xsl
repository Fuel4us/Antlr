<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:ns="http://www.dei.isep.ipp.pt/lprog">
    <xsl:output method="html"/>

    <xsl:template match="/ns:relatório">
        <html>
            <head>
                <title>Relatório de LPROG</title>
            </head>
            <body>
                <table width="1500" align="center" border="0">
                    <tr>
                        <td align="center">
                            <xsl:apply-templates select="//ns:logotipoDEI"/>
                        </td>
                    </tr>

                    <tr align="center">
                        <td>
                            <table align="center" border="0">

                                <h1 id="header1">
                                    <font size="12" color="#1f3d7a">
                                        <b>Relatório de Linguagens e Programação</b>
                                    </font>
                                </h1>

                                <br/>
                                <br/>

                                <font size="5" color="#1f3d7a">
                                    <b>
                                        <xsl:value-of select="//ns:tema"/>
                                    </b>
                                </font>

                                <br/>
                                <br/>

                                <font size="4" color="#1a1a1a">Instituto Superior de Engenharia do Porto - Licenciatura em Engenharia Informática</font>
                                <br/>
                                <br/>
                                <font size="4" color="#1a1a1a">
                                    <xsl:value-of select="//ns:disciplina/ns:designação"/>:
                                    <xsl:value-of select="//ns:disciplina/ns:anoCurricular"/>º Ano Curricular
                                </font>
                                <br/><br/>

                                <font size="4" color="#1a1a1a">
                                    Turma:
                                    <xsl:value-of select="//ns:turma"/>
                                    <br/>
                                </font>
                                <br/>
                                <font size="4" color="#1a1a1a">
                                    Professor (Sigla):
                                    <br/>
                                    <xsl:for-each select="//ns:professor">
                                        <xsl:value-of select="."/>
                                        <br/>
                                    </xsl:for-each>
                                </font>
                                <br/><br/>
                                <font size="4" color="#1a1a1a">
                                    Autores:
                                    <br/>
                                    <xsl:for-each select="//ns:autor">
                                        <xsl:value-of select="ns:nome"/> - <xsl:value-of select="ns:número"/> - <xsl:value-of select="ns:mail"/>
                                        <br/>
                                    </xsl:for-each>
                                </font>
                                <br/><br/>

                                <font size="6" color="#1f3d7a">
                                    <b>Índice</b>
                                </font>
                                <br/><br/>

                                <font size="4">
                                    <a href="#header1">Capa</a>
                                    <br/>
                                    <a href="#header2">Introdução</a>
                                    <br/>
                                    <a href="#header3">Análise</a>
                                    <br/>
                                    <a href="#header4">Linguagem</a>
                                    <br/>
                                    <a href="#header5">Transformações</a>
                                    <br/>
                                    <a href="#header6">Conclusão</a>
                                    <br/>
                                    <a href="#header7">Referências bibliográficas</a>
                                </font>
                                <br/><br/>

                                <h1 id="header2">
                                    <font size="6" color="#1f3d7a">
                                        <b>Introdução</b>
                                    </font>
                                </h1>
                                <font size="4" color="#1a1a1a">
                                    <xsl:apply-templates select="//ns:corpo/ns:introdução/ns:parágrafo"/>
                                    <ul style="text-align:left;">
                                        <xsl:for-each select="//ns:corpo/ns:introdução/ns:listaItems/ns:item">
                                            <li><xsl:value-of select="."/></li>
                                        </xsl:for-each>
                                    </ul>
                                </font>

                                <h1 id="header3">
                                    <font size="6" color="#1f3d7a">
                                        <b>Análise</b>
                                    </font>
                                </h1>
                                <font size="4" color="#1a1a1a">
                                    <xsl:apply-templates select="//ns:outrasSecções/ns:análise"/>
                                </font>

                                <h1 id="header4">
                                    <font size="6" color="#1f3d7a">
                                        <b>Linguagem</b>
                                    </font>
                                </h1>
                                <font size="4" color="#1a1a1a">
                                    <xsl:apply-templates select="//ns:linguagem"/>
                                </font>

                                <h1 id="header5">
                                    <font size="6" color="#1f3d7a">
                                        <b>Transformações</b>
                                    </font>
                                </h1>
                                <font size="4" color="#1a1a1a">
                                    <xsl:apply-templates select="//ns:transformações"/>
                                </font>

                                <h1 id="header6">
                                    <font size="6" color="#1f3d7a">
                                        <b>Conclusão</b>
                                    </font>
                                </h1>
                                <font size="4" color="#1a1a1a">
                                    <xsl:apply-templates select="//ns:conclusão"/>
                                </font>

                                <h1 id="header7">
                                    <font size="6" color="#1f3d7a">
                                        <b>Referências Bibliográficas</b>
                                    </font>
                                </h1>
                                <font size="4" color="#1a1a1a">
                                    <xsl:apply-templates select="//ns:referências"/>
                                </font>
                            </table>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- referencias -->

    <xsl:template match="ns:refBibliográfica">
        <p>
            <xsl:value-of select="ns:título"/>
        </p>
        <p>
            <xsl:value-of select="ns:dataPublicação"/>
        </p>
        <p>
            <xsl:value-of select="ns:autor"/>
        </p>
        <br/>
    </xsl:template>

    <xsl:template match="ns:refWeb">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="ns:URL"/>
            </xsl:attribute>
            <xsl:attribute name="target">_top</xsl:attribute>
            <xsl:value-of select="ns:URL"/>
        </xsl:element>
        <br/>
        <xsl:value-of select="ns:descrição"/>
        <br/>
        <xsl:apply-templates select="ns:consultadoEm"/>
        <br/>
        <br/>
    </xsl:template>

    <xsl:template match="ns:consultadoEm">
        Consultado em: <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="ns:referências">
        <xsl:apply-templates select="ns:refBibliográfica"/>
        <xsl:apply-templates select="ns:refWeb"/>
    </xsl:template>


    <!-- conclusao -->
    <xsl:template match="ns:conclusão">
        <p align="justify">
            <xsl:apply-templates select="ns:parágrafo"/>
        </p>
    </xsl:template>

    <!-- transformações -->
    <xsl:template match="ns:transformações">
        <font color="#008ae6">- <xsl:value-of select="@tituloSecção"/>:</font>
        <p align="justify">
            <xsl:apply-templates select="ns:parágrafo"/>
        </p>
        <ul style="text-align:left;">
            <xsl:for-each select="ns:listaItems/ns:item">
                <li><xsl:value-of select="."/></li>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <!-- linguagem -->
    <xsl:template match="ns:linguagem">
        <font color="#008ae6">- <xsl:value-of select="@tituloSecção"/>:</font>
        <p align="justify">
            <xsl:apply-templates select="ns:parágrafo"/>
        </p>
    </xsl:template>

    <!-- análise -->
    <xsl:template match="ns:análise">
        <font color="#008ae6">- <xsl:value-of select="@tituloSecção"/>:</font>
        <p align="justify">
            <xsl:apply-templates select="ns:parágrafo"/>
        </p>
        <ul style="text-align:left;">
            <xsl:for-each select="ns:listaItems/ns:item">
                <li><xsl:value-of select="."/></li>
            </xsl:for-each>
        </ul>
    </xsl:template>


    <!-- escreve um paragrafo -->
    <xsl:template match="ns:codigo">
        <font color="#888" size="2">
            <xsl:for-each select="ns:linha">
                <xsl:value-of select="text()"/>
                <br/>
            </xsl:for-each>
        </font>
        <br/>
        <br/>
    </xsl:template>


    <!-- lista cada item de uma lista de items -->
    <xsl:template match="ns:listaItems">
        <xsl:for-each select="ns:item">
            - <xsl:value-of select="text()"/>
            <br/>
        </xsl:for-each>
        <br/>
    </xsl:template>

    <!-- escreve um bloco -->
    <xsl:template match="ns:bloco">
        <xsl:apply-templates select="ns:parágrafo"/>
        <xsl:apply-templates select="ns:listaItems"/>
        <xsl:apply-templates select="ns:figura"/>
        <xsl:apply-templates select="ns:codigo"/>
    </xsl:template>

    <!-- introducao -->
    <xsl:template match="ns:introdução">
        <p align="justify">
            <xsl:apply-templates select="ns:bloco"/>
        </p>
    </xsl:template>

    <!-- logotipo do dei -->
    <xsl:template match="ns:logotipoDEI">
        <xsl:element name="img">
            <xsl:attribute name="src">
                <xsl:value-of select="."/>
            </xsl:attribute>

        </xsl:element>
    </xsl:template>

    <!-- escreve um paragrafo -->
    <xsl:template match="ns:parágrafo">
        <xsl:apply-templates />
        <br/>
        <br/>
    </xsl:template>

    <!-- default rule: copy any node beneath <paragrafo> -->
    <xsl:template match="ns:parágrafo//*">
        <xsl:copy>
            <xsl:copy-of select="@*" />
            <xsl:apply-templates />
        </xsl:copy>
    </xsl:template>

    <!-- override rule: <bold>... nodes get special treatment -->

    <xsl:template match="ns:parágrafo//ns:bold">
        <b>
            <xsl:apply-templates />
        </b>
    </xsl:template>

    <xsl:template match="ns:parágrafo//ns:itálico">
        <i>
            <xsl:apply-templates />
        </i>
    </xsl:template>

    <xsl:template match="ns:parágrafo//ns:sublinhado">
        <u>
            <xsl:apply-templates />
        </u>
    </xsl:template>

    <!-- default rule: ignore any unspecific text node -->
    <xsl:template match="text()" />

    <!-- override rule: copy any text node beneath description -->
    <xsl:template match="ns:parágrafo//text()">
        <xsl:copy-of select="." />
    </xsl:template>


</xsl:stylesheet>