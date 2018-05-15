<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>스트럿츠2 게시판</title>
<link rel="stylesheet" href="/StrutsBoard/board/common/css/css.css"
	type="text/css"></link>

<script type="text/javascript">
	function validation() {
		var frm = document.forms(0);

		if (frm.subject.value == "") {
			alert("제목을 안쓰냐");
			return false;
		}

		else if (frm.name.value == "") {
			alert("니 이름 뭔데");
			return false;
		}

		else if (frm.password.value == "") {
			alert("해킹당하고 싶냐?");
			return false;
		}

		else if (frm.content.value == "") {
			alert("내용이 부실하다");
			return false;
		}

		return true;
	}
</script>
</head>

<body>
	<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center"><h2>스트럿츠2 게시판</h2></td>
		</tr>
	</table>

	<s:if test="resultClass == NULL">
		<form action="writeAction.action" method="post"
			enctype="multipart/form-data" onsubmit="return validation();">
	</s:if>

	<s:else>
		<form action="modifyAction.action" method="post"
			enctype="multipart/form-data">
			<s:hidden name="no" value="%{resultClass.no}" />
			<s:hidden name="currentPage" value="%{currentPage}" />
			<s:hidden name="old_file" value="%{resultClass.file_savname}" />
	</s:else>

	<table width="600" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="right" colspan="2"><font color="#FF0000">*</font>는 꼭
				쓰거라</td>
		</tr>

		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>

		<tr>
			<td width="100" bgcolor="#F4F4F4"><font color="#FF0000">*</font>제목</td>
			<td width="500" bgcolor="#FFFFFF"><s:textfield name="subject"
					theme="simple" value="%{resultClass.subjet}" cssStyle="width:370px"
					maxlength="50" /></td>
		</tr>

		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>

		<tr>
			<td bgcolor="#F4F4F4"><font color="#FF0000">*</font>이름</td>
			<td bgcolor="#FFFFFF"><s:textfield name="name" theme="simple"
					value="%{resultClass.name}" cssStyle="width:100px" maxlength="20" />
			</td>
		</tr>

		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>

		<tr>
			<td bgcolor="#F4F4F4"><font color="#FF0000">*</font> 비밀번호</td>
			<td bgcolor="#FFFFFF"><s:textfield name="password"
					theme="simple" value="%{resultClass.password}"
					cssStyle="width:100px" maxlength="20" /></td>
		</tr>
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>

		<tr>
			<td bgcolor="#F4F4F4"><font color="#FF0000">*</font>내용</td>
			<td bgcolor="#FFFFFF"><s:textarea name="content" theme="simple"
					value="%{resultClass.content}" cols="50" rows="10" /></td>
		</tr>
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		
		<tr>
			<td bgcolor="#F4F4F4">첨부파일</td>
			<td bgcolor="#FFFFFF">
				<s:file name="upload" theme="simple"/>
				<s:if test="resultClass.file_orgname != NULL">
					&nbsp; * <s:property value="resultClass.file_orgname"/>파일 이미 등록되어있으니까 또 올리면 삭제된다 알아서해라
				</s:if>
			</td>
		</tr>
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		
		<tr>
			<td height="10" colspan="2"></td>
		</tr>
		
		<tr>
			<td align="right" colspan="2">
				<input name="submit" type="submit" value="작성완료" class="inputb">
				<input name="list" type="button" value="목록" class="inputb" onClick="javascript:location.href='listAction.action?currentPage=<s:property value="currentPage" />'"></input>
			</td>
		</tr>
</table>
</form>
</body>
</html>