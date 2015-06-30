<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="name" value="${sessionScope.guest}" />
<html>
    <head>
        <title>${name}&apos;s Personalized Calculator</title>
        <link rel="stylesheet" type="text/css" href="calculator.css">
    </head>

    <body>
        <h1>Hi, ${name}</h1>

        <form method="get" action="calculator">
            <div>
                <label for="operation">What would you like to do?</label>
                <select name="operation">
                    <option value="1">Add</option>
                    <option value="2">Subtract</option>
                    <option value="3">Multiply</option>
                    <option value="4">Divide</option>
                    <option value="5">Factorial</option>
                </select>
            </div>
            <div>
                <label for="operands">Please enter some numbers separated by spaces</label>
                <input name="operands" type="text"></input>
            </div>
            <div>
                <input name="calculate" type="submit" value="Calculate"></input>
            </div>
        </form>
        <div>${requestScope.resultText}</div>
        <a href="logout">Logout</a>
    </body>
</html>