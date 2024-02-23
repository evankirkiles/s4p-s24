<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/"> 
 <html>
 <body> 
  <h1 align="center" style="margin-block-start: 1em; margin-block-end: -0.25em;">Software For People 2024</h1> 
  <p style="max-width: 66ch; margin-inline: auto; text-align: center;"><a href="/">← Back Home</a></p>
  <p align="center" style="max-width: 66ch; margin-inline: auto;">This site delivers no HTML document. The HTML is entirely generated from (a) an XML file listing all of the students in the class, and (b) an XLS(T) file that templates how the HTML DOM should be generated from the XML file itself. XSLT is a templating language—it supports for-each loops backed by the basic XML file natively, something you'd generally have to use JavaScript for. I find this interesting.</p>
  <p align="center" style="max-width: 66ch; margin-inline: auto;">
    To see the XSL file that generated this page, click <a href="/websiteasxml.xsl">here</a>. To see the XML file containing this page's data, open the Network pane of your web inspector.
  </p>
   <table border="3" align="center" style="margin-block: 2em;" > 
    <thead>
      <tr> 
        <th></th>
        <th>Name</th> 
        <th>Website</th> 
      </tr>
    </thead>
    <tbody>
      <tr>
        <th colspan="3">
          Teacher
        </th>
      </tr>
      <xsl:for-each select="person/t"> 
        <tr> 
          <td style="text-align: center;"><img style="width: 1em; height: 1em; display: inline-block; margin-inline: auto;">
            <xsl:attribute name="src">
              <xsl:value-of select="concat(website, favicon)" />
            </xsl:attribute>
            </img>
          </td>
          <td><xsl:value-of select="name"/></td> 
          <td>
            <a target="_blank">
              <xsl:attribute name="href">
                <xsl:value-of select="website"/>
              </xsl:attribute>
              <xsl:value-of select="website"/>
            </a>
          </td> 
        </tr> 
      </xsl:for-each>
      <tr>
        <th colspan="3">
          Students
        </th>
      </tr>
      <xsl:for-each select="person/s"> 
        <tr> 
          <td style="text-align: center;"><img style="width: 1em; height: 1em; display: inline-block; margin-inline: auto;">
            <xsl:attribute name="src">
              <xsl:value-of select="concat(website, favicon)" />
            </xsl:attribute>
            </img>
          </td>
          <td><xsl:value-of select="name"/></td> 
          <td>
            <a target="_blank">
              <xsl:attribute name="href">
                <xsl:value-of select="website"/>
              </xsl:attribute>
              <xsl:value-of select="website"/>
            </a>
          </td> 
        </tr> 
      </xsl:for-each> 
    </tbody>
    </table>
    <p align="center" style="max-width: 66ch; margin-inline: auto;">
      There was once a time (1998) where the World Wide Web Consortium (W3C) envisioned XML as <a href="https://www.w3.org/press-releases/1998/xml10-rec/">the future of the web</a>. HTML5 was not yet a thing. The web was a mess of different standards and browsers, and XML was supposed to be the solution as a strongly-defined schema for data-backed websites.
    </p>
    <p align="center" style="max-width: 66ch; margin-inline: auto;">
      As it turned out, web developers preferred backwards compatibility with the HTML they had written before and the ability to write a document in a more human-readable way, not necessarily backed by tabular data. Finally, in 2007, W3C stopped focusing on the XML standards and instead focused on the <a href="https://platform.html5.org/history/webapps/r228.html" target="_blank">Web Applications 1.0 specification</a>, more commonly known as HTML5. However, browsers still need to support XML and XSLT for backwards compatibility.
    </p>
    <h2 align="center" style="max-width: 66ch; margin-inline: auto;">Further Reading</h2>
    <p align="center" style="max-width: 66ch; margin-inline: auto;">
      <a href="https://www.w3.org/wiki/The_history_of_the_Web" target="_blank">The history of the Web</a><br />
      <a href="https://www.w3.org/about/history/#history" target="_blank">The history of the W3C</a><br />
      <a href="https://whatwg.org/charter" target="_blank">The charter of the WHATWG</a><br />
      <a href="https://www.webstandards.org" target="_blank">The Web Standards Project</a>
    </p>
    <h2 align="center" style="max-width: 66ch; margin-inline: auto;">Glossary</h2>
    <dl  style="max-width: 66ch; margin-inline: auto;">
      <dt>HTML</dt>
      <dd>Hypertext Markup Language</dd>
      <dt>CSS</dt>
      <dd>Cascading Style Sheets</dd>
      <dt>XML</dt>
      <dd>Extensible Markup Language</dd>
      <dt>XSL(T)</dt>
      <dd>Extensible Stylesheet Language (Template)</dd>
      <dt>W3C</dt>
      <dd>World Wide Web Consortium</dd>
      <dt>WHATWG</dt>
      <dd>Web Hypertext Application Technology Working Group</dd>
    </dl>
    <hr align="center" style="max-width: 66ch; margin-inline: auto;"/>
    <p align="center" style="max-width: 66ch; margin-inline: auto;">
      <sup>1. You don't actually need to use XSLT to build an HTML document at all—you can write CSS that directly targets the elements of the XML document, and this will work.</sup>
    </p>
</body> 
</html> 
</xsl:template> 
</xsl:stylesheet> 