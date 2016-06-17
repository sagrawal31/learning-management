<html>
<head>
    <meta name="layout" content="abc" />
</head>
<body>
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Age</th>
            </tr>
            <g:each var="user" in="${allCreatedUsers}">
                    <tr class="${user.age > 100 ? 'bg-danger': ''}">
                        <td>
                            <a href="/user/show/${user.id}">
                                ${user.id}
                            </a>
                        </td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>(${user.age})</td>
                    </tr>
            </g:each>
        </table>
</body>
</html>