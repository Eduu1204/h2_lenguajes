<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Detalles del Pedido</h1>
        <table border="1">
          <tr>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Telefono</th>
        <th>Calle</th>
        <th>Ciudad</th>
        <th>Codigo postal</th>
        <th>Provincia</th>
        <th>Correo</th>
        <th>Fecha inclusion</th>
        <th>Numero pedido</th>
        <th>Fecha compra</th>
        <th>Fecha entrega</th>
        <th>Factura</th>
        <th>Producto</th>
        <th>Referencia</th>
        <th>Precio</th>
        <th>Unidades</th>
          </tr>
          <xsl:for-each select="//pedido">
            <tr>
            <td><xsl:value-of select="cliente/nombre"/></td>
            <td><xsl:value-of select="cliente/apellidos"/></td>
            <td><xsl:value-of select="cliente/telefono"/></td>
            <td><xsl:value-of select="cliente/direccion/calle"/></td>
            <td><xsl:value-of select="cliente/direccion/ciudad"/></td>
            <td><xsl:value-of select="cliente/direccion/codigo_postal"/></td>
            <td><xsl:value-of select="cliente/direccion/provincia"/></td>
            <td><xsl:value-of select="cliente/correo_electronico"/></td>
            <td><xsl:value-of select="fecha_inclusion"/></td>
            <td><xsl:value-of select="detalle_pedido/numero_pedido"/></td>
            <td><xsl:value-of select="detalle_pedido/fecha_compra"/></td>
            <td><xsl:value-of select="detalle_pedido/fecha_entrega"/></td>
            <td><xsl:value-of select="detalle_pedido/total_factura"/></td>
            <td><xsl:value-of select="detalle_pedido/productos/producto/nombre"/></td>
            <td><xsl:value-of select="detalle_pedido/productos/producto/referencia"/></td>
            <td><xsl:value-of select="detalle_pedido/productos/producto/precio"/></td>
            <td><xsl:value-of select="detalle_pedido/productos/producto/unidades"/></td>
            </tr>
          </xsl:for-each>
        </table>
        
        <h1>Detalles del Cliente</h1>
        <table border="1">
          <tr>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Telefono</th>
        <th>Calle</th>
        <th>Ciudad</th>
        <th>Codigo postal</th>
        <th>Provincia</th>
        <th>Correo</th>
          </tr>
          <xsl:for-each select="//pedido">
            <tr>
            <td><xsl:value-of select="cliente/nombre"/></td>
            <td><xsl:value-of select="cliente/apellidos"/></td>
            <td><xsl:value-of select="cliente/telefono"/></td>
            <td><xsl:value-of select="cliente/direccion/calle"/></td>
            <td><xsl:value-of select="cliente/direccion/ciudad"/></td>
            <td><xsl:value-of select="cliente/direccion/codigo_postal"/></td>
            <td><xsl:value-of select="cliente/direccion/provincia"/></td>
            <td><xsl:value-of select="cliente/correo_electronico"/></td>
            </tr>
          </xsl:for-each>
        </table>
        
        <h1>Factura</h1>
        <table border="1">
          <tr>
        <th>Cliente</th>
        <th>Fecha inclusion</th>
        <th>Numero pedido</th>
        <th>Fecha compra</th>
        <th>Fecha entrega</th>
        <th>Precio total</th>
        <th>Producto</th>
        <th>Referencia</th>
        <th>Precio</th>
        <th>Unidades</th>
          </tr>
          <xsl:for-each select="//pedido">
            <tr>
            <td><xsl:value-of select="cliente/nombre"/></td>
            <td><xsl:value-of select="fecha_inclusion"/></td>
            <td><xsl:value-of select="detalle_pedido/numero_pedido"/></td>
            <td><xsl:value-of select="detalle_pedido/fecha_compra"/></td>
            <td><xsl:value-of select="detalle_pedido/fecha_entrega"/></td>
            <td><xsl:value-of select="detalle_pedido/total_factura"/></td>
            <td><xsl:value-of select="detalle_pedido/productos/producto/nombre"/></td>
            <td><xsl:value-of select="detalle_pedido/productos/producto/referencia"/></td>
            <td><xsl:value-of select="detalle_pedido/productos/producto/precio"/></td>
            <td><xsl:value-of select="detalle_pedido/productos/producto/unidades"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>