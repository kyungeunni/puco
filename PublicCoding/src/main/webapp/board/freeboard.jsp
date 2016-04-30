<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html> 
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../assets/css/newboard.css" />
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

</head>
  <center>
    <h3>�����Խ��� (FreeBoard)</h3>
   <!--  <table border="0" width="700" id="frBtn">
     <td align="left" class="writeBt">
       <a href="board_insert.do">
       <button class="button">�۾���&nbsp;&nbsp;
       <i class="fa fa-pencil" aria-hidden="true"></i>
       </button></a>
     </td>
    </table> -->
    <table id="freeboard" border="0px" bordercolor="#CCCCCC" width="700">
     <td align="left" class="writeBt">
       <a href="board_insert.do">
       <button class="button">�۾���&nbsp;&nbsp;&nbsp;&nbsp;
       <i class="fa fa-pencil" aria-hidden="true"></i>
       </button></a>
     </td>
      <tr align="center" class="menubar">
       <td width="15%">��ȣ</td>
       <td width="45%">����</td>
       <td width="20%">�ۼ���</td>
       <td width="15%">�ۼ���</td>
       <td width="10%">��ȸ��</td>
      </tr>
      <c:forEach var="vo" items="${list }">
        <tr class="dataList">
          <td width=10% class="tdcenter">${vo.bno }</td>
          <td width=45% class="tdleft">
          <a href="board_content.do?no=${vo.bno }&page=${curpage}">
          ${vo.bsubject }</a>
          &nbsp;
          <c:if test="${today==vo.bdate }">
            New&nbsp;&nbsp;<i class="fa fa-bell-o" aria-hidden="true"></i>
          </c:if>
          &nbsp;
          <c:if test="${vo.FBreplyCount>0 }">
            (${vo.FBreplyCount })
          </c:if>
          </td>
          <td width=15% class="tdcenter">${vo.userid }</td>
          <td width=20% class="tdcenter">
          <ftm:formatDate value="${vo.bdate }" pattern="yyyy-MM-dd" />
          </td>
          <td width=10% class="tdcenter">${vo.bhit }</td>
        </tr>
      </c:forEach>
    </table>
    <table id="freeboard">
      <tr>
        <td align=right>
          <a href="freeboard.do?page=${curpage>1?curpage-1:curpage }">
            <i class="fa fa-chevron-circle-left" aria-hidden="true"></i></a>&nbsp;
          <a href="freeboard.do?>page=${curpage<totalpage?curpage+1:curpage }">
          <i class="fa fa-chevron-circle-right" aria-hidden="true"></i></a>&nbsp;&nbsp;
          ${curpage } page / ${totalpage } pages
        </td>
      </tr>
    
    </table>
  </center>
<body>
</body>
</html>
