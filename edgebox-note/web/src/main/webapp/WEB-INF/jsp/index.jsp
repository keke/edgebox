<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edgebox note</title>
    <c:choose>
        <c:when test="${debug}">
            <link rel="stylesheet" type="text/css" href="${staticPath}/ext/4.1.3/resources/css/ext-standard-debug.css"/>
            <link rel="stylesheet" type="text/css" href="./_s/std/resources/css/note.css"/>
        </c:when>
        <c:otherwise>

        </c:otherwise>
    </c:choose>
</head>
<body>

<c:choose>
    <c:when test="${debug}">
        <script type="text/javascript" src="${staticPath}/ext/4.1.3/ext-debug.js"></script>
        <script type="text/javascript">
            Ext.Loader.setConfig({
                enabled: true,
                disableCaching: false,
                paths: {
                    'EbNote': './_s/std/js/note'
                }
            });
        </script>
        <script type="text/javascript" src="./_s/std/js/app.js"></script>
    </c:when>
    <c:otherwise>

    </c:otherwise>
</c:choose>
</body>
</html>