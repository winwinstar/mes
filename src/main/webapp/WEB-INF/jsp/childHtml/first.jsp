<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>First</title>
    <style>
        body,p{
            padding: 0;
            margin: 0;
        }
        p{
            text-align: left;
            margin: 4px;
            padding: 2px;
            font-weight: bold;
            float:left;
        }
        #body{
            height:calc(100vh - 33px);
        }
        footer {
            width: 100%;
            height: 33px;
            padding: 0;
            margin: 0;
            background-color: #808080;
        }
    </style>
</head>
<body>
    <div id="body"></div>
    <footer>
        <p>UserID :</p>
        <p style="background-color: #7cfc00;padding: 2px 5px">${userID}</p>
    </footer>
</body>
</html>