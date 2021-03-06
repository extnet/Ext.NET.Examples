<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Image on Collapsed BorderLayout Region - Ext.NET Examples</title>

    <link href="/resources/css/examples.css" rel="stylesheet" />

    <style>
        #WestPanel-placeholder-innerCt {
            background : url(collapsed-west.png) no-repeat center;
        }

        #SouthPanel-placeholder-innerCt {
            background : url(collapsed-south.png) no-repeat center;
        }
    </style>
</head>
<body>
    <ext:ResourceManager runat="server" />

    <h1>Image on Collapsed BorderLayout Region</h1>

    <ext:Window
        runat="server"
        Title="Collapsed Region Image"
        Width="720"
        Height="480"
        Closable="false"
        Layout="Border">
        <Items>
            <ext:Panel
                ID="WestPanel"
                runat="server"
                Region="West"
                Collapsible="true"
                Split="true"
                Width="270"
                Title="Navigation"
                TitleCollapse="false"
                Floatable="false"
                Collapsed="true"
                BodyPadding="18"
                Html="Collapse Panel to see image">
                <Listeners>
                    <AfterRender Handler="this.setTitle('');" />
                    <BeforeCollapse Handler="this.setTitle('');" />
                    <BeforeExpand Handler="this.setTitle(this.initialConfig.title);" />
                </Listeners>
            </ext:Panel>
            <ext:Panel runat="server" Region="Center" Title="Center" />
            <ext:Panel
                ID="SouthPanel"
                runat="server"
                Region="South"
                Collapsible="true"
                Split="true"
                Height="180"
                Title="Footer"
                TitleCollapse="false"
                Floatable="false"
                Collapsed="true">
                <Listeners>
                    <AfterRender Handler="this.setTitle('');" />
                    <BeforeCollapse Handler="this.setTitle('');" />
                    <BeforeExpand Handler="this.setTitle(this.initialConfig.title);" />
                </Listeners>
             </ext:Panel>
        </Items>
    </ext:Window>
</body>
</html>