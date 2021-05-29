<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <style type="text/css">
          body{
            background-image: url('background.gif');
            font-family:'Arial',verdana,sans-serif;
            font-size:16px;
          }
          h1{
            font-size:30px;
            font-weight: normal;
            color: #A0A0FF;
            border-bottom: 2px solid #EFF0F1;
          }
          h2{
            font-size:30px;
            font-weight: normal;
            color: #FFC81E;
            border-bottom: 2px solid #EFF0F1;
          }
          h4{
            font-size:14px;
          }
        </style>
      </head>
      <body>
        <h1 align="center"><strong>MBC 대학가요제</strong></h1>
        <p align="center"><strong>주최: </strong><xsl:value-of select="music/대학가요제/host"/><br/><br/>
        <strong>채널: </strong><xsl:value-of select="music/대학가요제/channel"/><br/><br/>
        <strong>기간: </strong><xsl:value-of select="music/대학가요제/term"/><br/><br/>
        <strong>설명: </strong><xsl:value-of select="music/대학가요제/description"/><br/><br/>
        </p>
        <table align="center">
          <tr>
            <td><embed src="videoplayback.mp4" autostart="false" loop="false" showstatusbar="true"></embed></td>
            <h4 align="center">* 다른 곡 듣기 *</h4>
            <a href="https://youtu.be/s3uPXokhpnA" target="_blank">
              <h4 align="center">연극이 끝난 후</h4>
            </a>
            <a href="https://youtu.be/267oGDB2OWY" target="_blank">
              <h4 align="center">꿈속에서</h4>
            </a>
            <a href="https://youtu.be/SA105UMOG-k" target="_blank">
              <h4 align="center">잘 부탁드립니다</h4>
            </a>
          </tr>
        </table>
        <h3 align="center"><strong>　</strong></h3>
        <table align="center">
          <tr bgcolor="#D2D2FF">
            <th>앨범</th>
            <th>제목</th>
            <th>아티스트</th>
            <th>사진</th>
            <th>참가년도</th>
            <th>수상내역</th>
          </tr>
          <xsl:for-each select="music/track1">
          <tr bgcolor="#FFFFFF">
            <td><img><xsl:attribute name="src"><xsl:value-of select="image/@file"/></xsl:attribute>
            <xsl:attribute name="width"><xsl:value-of select="image/@w"/></xsl:attribute>
            <xsl:attribute name="height"><xsl:value-of select="image/@h"/></xsl:attribute></img></td>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="artist"/></td>
            <td><img><xsl:attribute name="src"><xsl:value-of select="photo/@file"/></xsl:attribute>
            <xsl:attribute name="width"><xsl:value-of select="photo/@w"/></xsl:attribute>
            <xsl:attribute name="height"><xsl:value-of select="photo/@h"/></xsl:attribute></img></td>
            <td><xsl:value-of select="date"/></td>
            <td><xsl:value-of select="rank"/></td>
          </tr>
          </xsl:for-each>
        </table>
        <h2 align="center"><br/><strong>MBC 강변가요제</strong></h2>
        <p align="center"><strong>주최: </strong><xsl:value-of select="music/강변가요제/host"/><br/><br/>
        <strong>채널: </strong><xsl:value-of select="music/강변가요제/channel"/><br/><br/>
        <strong>기간: </strong><xsl:value-of select="music/강변가요제/term"/><br/><br/>
        <strong>설명: </strong><xsl:value-of select="music/강변가요제/description"/><br/><br/>
        </p>
        <table align="center">
          <tr>
            <td><embed src="videoplayback2.mp4" autostart="false" loop="false" showstatusbar="true"></embed></td>
            <h4 align="center">* 다른 곡 듣기 *</h4>
            <a href="https://youtu.be/gjyiDcdYYBQ" target="_blank">
              <h4 align="center">J에게</h4>
            </a>
            <a href="https://youtu.be/oqG60ktYJkU" target="_blank">
              <h4 align="center">귀로</h4>
            </a>
            <a href="https://youtu.be/DErlyg43TT0" target="_blank">
              <h4 align="center">내 안에 넌...</h4>
            </a>
          </tr>
        </table>
        <h3 align="center"><strong>　</strong></h3>
        <table align="center">
          <tr bgcolor="#FFC81E">
            <th>앨범</th>
            <th>제목</th>
            <th>아티스트</th>
            <th>사진</th>
            <th>참가년도</th>
            <th>수상내역</th>
          </tr>
          <xsl:for-each select="music/track2">
          <tr bgcolor="#FFFFFF">
            <td><img><xsl:attribute name="src"><xsl:value-of select="image/@file"/></xsl:attribute>
            <xsl:attribute name="width"><xsl:value-of select="image/@w"/></xsl:attribute>
            <xsl:attribute name="height"><xsl:value-of select="image/@h"/></xsl:attribute></img></td>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="artist"/></td>
            <td><img><xsl:attribute name="src"><xsl:value-of select="photo/@file"/></xsl:attribute>
            <xsl:attribute name="width"><xsl:value-of select="photo/@w"/></xsl:attribute>
            <xsl:attribute name="height"><xsl:value-of select="photo/@h"/></xsl:attribute></img></td>
            <td><xsl:value-of select="date"/></td>
            <td><xsl:value-of select="rank"/></td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
