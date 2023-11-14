<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Store</title>
      </head>
      <body>
        <h1>Browse over 100's of stream packages:</h1>
        <p>Premium packages with instant downloads!</p>
        <xsl:apply-templates select="store/item"/>
      </body>
    </html>
  </xsl:template>
    
  <xsl:template match="item">
    <article>
      <h3><xsl:value-of select="descripcion"/></h3>
      <p><xsl:value-of select="precio"/> <xsl:value-of select="precio/@divisa"/></p>
    </article>
  </xsl:template>
</xsl:stylesheet>