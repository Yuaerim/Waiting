<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:choose>
	<c:when test="${!empty ing_WaingList_C}">
		<c:forEach var="v" items="${ing_WaingList_C}" varStatus="status">
			<tr>
				<th scope="row">${status.count}</th>
				<td>${v.f_name}</td>
				<td>
					<nav>
						<ul class="pager">
							<li><a
								href="Reservation.ch?f_code=${v.f_code}&&my_code=${ing_WaingList[status.index].my_code}"
								style="border: #7BBBD6 solid 3px; border-radius: 8px; background-color: #E1F2F9; color: black;">인증하기</a></li>
						</ul>
					</nav>
				</td>
			</tr>
		</c:forEach>
	</c:when>
	<c:otherwise>
		<tr>
			<td colspan="2">

				<h4 class="font-weight-bold">진행중인 예약이 없습니다.</h4>
			<td>
		</tr>
	</c:otherwise>
</c:choose>
