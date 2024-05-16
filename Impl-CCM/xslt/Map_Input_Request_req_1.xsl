<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/Map_Input_Request_req_1.map" md5sum="fbc060b3b37ba01bb9c6b222afbb0f91" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		Map_Input_Request_req_1.map
*   Map declaration(s):	Map_Input_Request_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/sharedContext%3D%257Bhttp%253A%252F%252FImpl-CCMLibrary%257DCCMSharedBO/message%3D%257Bhttp%253A%252F%252FImpl-CCMLibrary%252FTokenGenerationService%257DGenerateTokenRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/sharedContext%3D%257Bhttp%253A%252F%252FImpl-CCMLibrary%257DCCMSharedBO/message%3D%257Bhttp%253A%252F%252FImpl-CCMLibrary%252FTokenGenerationService%257DGenerateTokenRequestMsg/xpath%3D%252F/smo.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xltxe="http://www.ibm.com/xmlns/prod/xltxe-j"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:str="http://exslt.org/strings"
    xmlns:exsl="http://exslt.org/common"
    xmlns:set="http://exslt.org/sets"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://exslt.org/math"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io7="http://Impl-CCMLibrary/TokenGenerationService"
    xmlns:io6="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:io9="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io8="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io10="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io="http://www.w3.org/2005/08/addressing"
    xmlns:io3="wsdl.http://Impl-CCMLibrary/TokenGenerationService"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io5="http://NBDATA"
    xmlns:io4="http://Impl-CCMLibrary"
    xmlns:map="http://Impl-CCM/xslt/Map_Input_Request_req_1"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="date str exsl set fn math map xltxe msl"
    version="2.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'io8:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:Map_Input_Request_req_12">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io8:smo" mode="map:Map_Input_Request_req_1">
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io8:smo" to "io8:smo".  -->
  <xsl:template match="io8:smo"  mode="map:Map_Input_Request_req_1">
    <io8:smo>
      <context>
        <shared>
          <xsl:attribute name="xsi:type">
            <xsl:value-of select="'io4:CCMSharedBO'"/>
          </xsl:attribute>
          <!-- a simple data mapping: "body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:lob"(string) to "lob"(string) -->
          <xsl:if test="body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:lob">
            <xsl:element name="lob">
              <xsl:value-of select="body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:lob"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:applicationNo"(string) to "applicationNumber"(string) -->
          <xsl:if test="body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:applicationNo">
            <xsl:element name="applicationNumber">
              <xsl:value-of select="body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:applicationNo"/>
            </xsl:element>
          </xsl:if>
          <!-- a simple data mapping: "body/io7:GenerateToken/TokenGenerationAisInput/io5:end_point_url"(string) to "authURL"(anyURI) -->
          <xsl:if test="body/io7:GenerateToken/TokenGenerationAisInput/io5:end_point_url">
            <xsl:element name="authURL">
              <xsl:value-of select="body/io7:GenerateToken/TokenGenerationAisInput/io5:end_point_url"/>
            </xsl:element>
          </xsl:if>
        </shared>
      </context>
      <headers>
        <HTTPHeader>
          <!-- a structural mapping: "body/io7:GenerateToken/TokenGenerationAisInput/io5:cookie"(string) to "header"(HTTPHeader) -->
          <xsl:apply-templates select="body/io7:GenerateToken/TokenGenerationAisInput/io5:cookie" mode="localCookieToHeader_610350547">
          </xsl:apply-templates>
        </HTTPHeader>
      </headers>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io3:GenerateTokenRequestMsg'"/>
        </xsl:attribute>
        <io7:GenerateToken>
          <!-- a structural mapping: "body/io7:GenerateToken/TokenGenerationAisInput"(TokenGenerationAIsInput) to "TokenGenerationAisInput"(TokenGenerationAIsInput) -->
          <xsl:copy-of select="body/io7:GenerateToken/TokenGenerationAisInput" copy-namespaces="yes"/>
        </io7:GenerateToken>
      </body>
    </io8:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io8:smo" to "io8:smo".  -->
  <xsl:template name="map:Map_Input_Request_req_12">
    <xsl:param name="smo"/>
    <context>
      <shared>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io4:CCMSharedBO'"/>
        </xsl:attribute>
        <!-- a simple data mapping: "$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:lob"(string) to "lob"(string) -->
        <xsl:if test="$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:lob">
          <xsl:element name="lob">
            <xsl:value-of select="$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:lob"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:applicationNo"(string) to "applicationNumber"(string) -->
        <xsl:if test="$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:applicationNo">
          <xsl:element name="applicationNumber">
            <xsl:value-of select="$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:loggingDetails/io5:applicationNo"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:end_point_url"(string) to "authURL"(anyURI) -->
        <xsl:if test="$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:end_point_url">
          <xsl:element name="authURL">
            <xsl:value-of select="$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:end_point_url"/>
          </xsl:element>
        </xsl:if>
      </shared>
    </context>
    <headers>
      <HTTPHeader>
        <!-- a structural mapping: "$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:cookie"(string) to "header"(HTTPHeader) -->
        <xsl:apply-templates select="$smo/body/io7:GenerateToken/TokenGenerationAisInput/io5:cookie" mode="localCookieToHeader_610350547">
        </xsl:apply-templates>
      </HTTPHeader>
    </headers>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'io3:GenerateTokenRequestMsg'"/>
      </xsl:attribute>
      <io7:GenerateToken>
        <!-- a structural mapping: "$smo/body/io7:GenerateToken/TokenGenerationAisInput"(TokenGenerationAIsInput) to "TokenGenerationAisInput"(TokenGenerationAIsInput) -->
        <xsl:copy-of select="$smo/body/io7:GenerateToken/TokenGenerationAisInput" copy-namespaces="yes"/>
      </io7:GenerateToken>
    </body>
  </xsl:template>

  <!-- This rule represents an element mapping: "io5:cookie" to "header".  -->
  <xsl:template match="io5:cookie"  mode="localCookieToHeader_610350547">
    <header>
      <!-- a simple mapping with no associated source:  to "io10:name"(string) -->
      <io10:name>
        <xsl:text>Cookie</xsl:text>
      </io10:name>
      <!-- a simple data mapping: "."(string) to "io10:value"(string) -->
      <io10:value>
        <xsl:value-of select="."/>
      </io10:value>
    </header>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::node()[not(name() = '')]">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>