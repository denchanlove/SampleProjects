<%@page import="java.util.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="windows-31j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  <title>SlickGrid example 1: Basic grid</title>
  <link rel="stylesheet" href="C:/Users/hsakai.SEV/Downloads/SlickGrid-2.3.2/SlickGrid-2.3.2/slick.grid.css" type="text/css"/>
  <link rel="stylesheet" href="C:/Users/hsakai.SEV/Downloads/SlickGrid-2.3.2/SlickGrid-2.3.2/css/smoothness/jquery-ui-1.11.3.custom.css" type="text/css"/>
  <link rel="stylesheet" href="C:/Users/hsakai.SEV/Downloads/SlickGrid-2.3.2/SlickGrid-2.3.2/examples/examples.css" type="text/css"/>
</head>
<body>
<table width="100%">
  <tr>
    <td valign="top" width="50%">
      <div id="myGrid" style="width:600px;height:500px;"></div>
    </td>
  </tr>
</table>

<script src="C:/Users/hsakai.SEV/Downloads/SlickGrid-2.3.2/SlickGrid-2.3.2/lib/jquery-1.11.2.min.js"></script>
<script src="C:/Users/hsakai.SEV/Downloads/SlickGrid-2.3.2/SlickGrid-2.3.2/lib/jquery.event.drag-2.3.0.js"></script>

<script src="C:/Users/hsakai.SEV/Downloads/SlickGrid-2.3.2/SlickGrid-2.3.2/slick.core.js"></script>
<script src="C:/Users/hsakai.SEV/Downloads/SlickGrid-2.3.2/SlickGrid-2.3.2/slick.grid.js"></script>

<script>
  var grid;
  var columns = [
    {id: "title", name: "Title", field: "title"},
    {id: "duration", name: "Duration", field: "duration"},
    {id: "%", name: "% Complete", field: "percentComplete"},
    {id: "start", name: "Start", field: "start"},
    {id: "finish", name: "Finish", field: "finish"},
    {id: "effort-driven", name: "Effort Driven", field: "effortDriven"}
  ];

  var options = {
    enableCellNavigation: true,
    enableColumnReorder: false
  };

  $(function () {
    var data = [];
    for (var i = 0; i < 500; i++) {
      data[i] = {
        title: "Task " + i,
        duration: "5 days",
        percentComplete: Math.round(Math.random() * 100),
        start: "01/01/2009",
        finish: "01/05/2009",
        effortDriven: (i % 5 == 0)
      };
    }

    grid = new Slick.Grid("#myGrid", data, columns, options);
  })
</script>
</body>
</html>