<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"  %>
<%--基本路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--login--%>
<c:set var="lCtx" value="${pageContext.request.contextPath}/static/login"/>
<%--cms--%>
<c:set var="cCtx" value="${pageContext.request.contextPath}/static/cms"/>
