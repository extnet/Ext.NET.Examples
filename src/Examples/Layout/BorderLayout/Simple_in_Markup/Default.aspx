<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Simple BorderLayout in Markup - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />
</head>
<body>
    <ext:ResourceManager runat="server" />

    <h1>Simple BorderLayout in Markup</h1>

    <ext:Button
        ID="Button1"
        runat="server"
        Text="Show Window"
        IconCls="x-md md-icon-open-in-new">
        <Listeners>
            <Click Handler="#{Window1}.show();" />
        </Listeners>
    </ext:Button>

    <ext:Window
        ID="Window1"
        runat="server"
        Title="Simple Layout"
        Width="720"
        Height="480"
        Border="false"
        Collapsible="true"
        Layout="Border">
        <Items>
            <ext:Panel
                runat="server"
                Region="West"
                Collapsible="true"
                Split="true"
                MinWidth="270"
                Width="270"
                Title="Navigation"
                />
            <ext:TabPanel runat="server" Region="Center" ActiveTabIndex="0">
                <Items>
                    <ext:Panel
                        ID="Tab1"
                        runat="server"
                        Title="First Tab"
                        BodyPadding="18"
                        Html="First Tab"
                        />
                    <ext:Panel
                        ID="Tab2"
                        runat="server"
                        Title="Another Tab"
                        BodyPadding="18"
                        Html="Another Tab"
                        />
                </Items>
            </ext:TabPanel>
        </Items>
    </ext:Window>
</body>
</html>