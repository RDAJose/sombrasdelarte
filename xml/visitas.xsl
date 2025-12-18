<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/visitas">
    <html>
      <body>

        <!-- a) Header -->
        <h1>Visitas a mi web</h1>

        <!-- b) Tabla -->
        <table border="1">
          <tr>
            <th>Fecha</th>
            <th>Hora</th>
            <th>Navegador</th>
            <th>Duración</th>
          </tr>

          <!-- c) Ordenar por fecha -->
          <xsl:for-each select="visita[pagina='inicio']">
            <xsl:sort select="fecha" order="ascending"/>

            <!-- d) Colores por navegador -->
            <tr>
              <xsl:attribute name="style">
                <xsl:if test="navegador='chrome'">background-color:yellow;</xsl:if>
                <xsl:if test="navegador='edge'">background-color:lightblue;</xsl:if>
              </xsl:attribute>

              <td><xsl:value-of select="fecha"/></td>
              <td><xsl:value-of select="hora"/></td>
              <td><xsl:value-of select="navegador"/></td>
              <td><xsl:value-of select="duracion"/></td>
            </tr>

          </xsl:for-each>

        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
