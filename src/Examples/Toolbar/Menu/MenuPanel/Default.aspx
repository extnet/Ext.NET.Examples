<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>MenuPanel - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />

    <script>
        var menuItemClick = function (menu, item) {
            if (item) {
                App.PnlCenter.body.update(Ext.String.format("Clicked: {0}", item.text)).highlight();
            }
        };
    </script>

    <style type="text/css">
        /*
         *  This CSS class just illustrates the new selected entry highlight
         *  feature introduced on Ext.NET 4.3.0. It is used below by the first
         *  menu panel.
         */
        .bold-highlight {
            font-weight: bold
        }
    </style>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />

        <h1>MenuPanel Example</h1>

        <ext:Window
            runat="server"
            Title="MenuPanel"
            Closable="false"
            Width="960"
            Height="370"
            Layout="Border">
            <Items>
                <ext:Panel
                    runat="server"
                    Width="360"
                    Layout="Accordion"
                    Split="true"
                    Region="West"
                    MarginSpec="5 0 5 5"
                    Border="false">
                    <Items>
                        <ext:MenuPanel
                            runat="server"
                            Title="MenuPanel with Selection Saving"
                            SelectedTextCls="bold-highlight">
                            <Menu ID="mnu1" runat="server">
                                <Items>
                                    <ext:MenuItem runat="server" Text="Item 1" IconCls="x-md md-icon-arrow-forward" />
                                    <ext:MenuItem runat="server" Text="Item 2" IconCls="x-md md-icon-arrow-forward" />
                                    <ext:MenuItem runat="server" Text="Item 3" IconCls="x-md md-icon-arrow-forward" />
                                </Items>
                                <Listeners>
                                    <Click Fn="menuItemClick" />
                                </Listeners>
                            </Menu>
                        </ext:MenuPanel>
                        <ext:MenuPanel
                            runat="server"
                            Title="MenuPanel without Selection Saving"
                            SaveSelection="false">
                            <Menu ID="mnu2" runat="server">
                                <Items>
                                    <ext:MenuItem runat="server" Text="Item 1" IconCls="x-md md-icon-arrow-forward" />
                                    <ext:MenuItem runat="server" Text="Item 2" IconCls="x-md md-icon-arrow-forward" />
                                    <ext:MenuItem runat="server" Text="Item 3" IconCls="x-md md-icon-arrow-forward" />
                                </Items>
                                <Listeners>
                                    <Click Fn="menuItemClick" />
                                </Listeners>
                            </Menu>
                        </ext:MenuPanel>
                        <ext:MenuPanel
                            runat="server"
                            Title="Menu with Predefined Selection"
                            SelectedIndex="1">
                            <Menu ID="mnu3" runat="server">
                                <Items>
                                    <ext:MenuItem runat="server" Text="Item 1" IconCls="x-md md-icon-arrow-forward" />
                                    <ext:MenuItem runat="server" Text="Item 2" IconCls="x-md md-icon-arrow-forward" />
                                    <ext:MenuItem runat="server" Text="Item 3" IconCls="x-md md-icon-arrow-forward" />
                                </Items>
                                <Listeners>
                                    <Click Fn="menuItemClick" />
                                </Listeners>
                            </Menu>
                        </ext:MenuPanel>
                    </Items>
                </ext:Panel>
                <ext:Panel
                    ID="PnlCenter"
                    runat="server"
                    Title="Selected Item"
                    BodyPadding="18"
                    Region="Center"
                    MarginSpec="5 5 5 0" />
            </Items>
        </ext:Window>
    </form>
</body>
</html>
