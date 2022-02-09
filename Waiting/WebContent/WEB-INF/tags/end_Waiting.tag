<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>

<c:when test="${!empty end_WaitingList}">


<c:forEach var="list1" items="${end_WaitingList}" varStatus="status">

	<tr>

		<th scope="row">${status.count}</th>
		<td>${end_WaitingList_D[status.index].f_name}</td>
		<td>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="${endPercent[status.index]}"
					aria-valuemin="0" aria-valuemax="100" style="width: ${endPercent[status.index]}%;">${endPercent[status.index]}%</div>
			</div>
		</td>
	</tr>
</c:forEach>
</c:when>

<c:otherwise>
<tr>
<td colspan="2">

	<h4 class="font-weight-bold">종료된 챌린지가 없습니다.</h4>
<td>
	</tr>
</c:otherwise>
</c:choose>