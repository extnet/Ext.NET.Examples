<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Draggable Panel - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />

        <ext:Panel
            runat="server"
            Title="Drag Me"
            IconCls="x-md md-icon-open-with"
            Frame="true"
            Width="200"
            Height="180"
            Floating="true"
            Draggable="true"
            X="50"
            Y="50">
        </ext:Panel>

        <ext:Panel
            runat="server"
            Title="Drag Me Too"
            IconCls="x-md md-icon-open-with"
            Frame="true"
            Width="200"
            Height="180"
            Floating="true"
            Draggable="true"
            X="100"
            Y="100">
        </ext:Panel>
    </form>
</body>
</html>