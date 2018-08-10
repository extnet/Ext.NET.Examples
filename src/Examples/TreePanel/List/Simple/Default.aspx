<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Multi Node Tree List built using markup - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />

</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />

        <h1>Simple Tree List</h1>

        <p>
            The <b>TreeList</b> component is a simplified and lightweight version of the <b>TreePanel</b>, useful for simple and responsive navigation trees.
        </p>
        <p>
            This example highlights Ext.NET syntax to build a simple tree.
        </p>

        <ext:TreeList runat="server" ID="TreeList1" Reference="tl">
            <Listeners>
                <SelectionChange Handler="Ext.toast('You clicked: <b>' + record.data.text + '</b>');" />
            </Listeners>
            <Store>
                <ext:TreeStore ID="TreeStore1" runat="server">
                    <Root>
                        <ext:Node Expanded="true">
                            <Children>
                                <ext:Node Text="Home" IconCls="x-fa fa-home">
                                    <Children>
                                        <ext:Node Text="Messages" IconCls="x-fa fa-inbox" Leaf="true" />
                                        <ext:Node Text="Archive" IconCls="x-fa fa-database">
                                            <Children>
                                                <ext:Node Text="First" IconCls="x-fa fa-sliders" Leaf="true" />
                                                <ext:Node Text="No Icon" IconCls="" Leaf="true" />
                                            </Children>
                                        </ext:Node>
                                    </Children>
                                </ext:Node>
                                <ext:Node Text="Users" IconCls="x-fa fa-user" Leaf="true" />
                                <ext:Node Text="Settings" IconCls="x-fa fa-wrench">
                                    <Children>
                                        <ext:Node Text="Sharing" IconCls="x-fa fa-share-alt" Leaf="true" />
                                    </Children>
                                </ext:Node>
                            </Children>
                        </ext:Node>
                    </Root>
                </ext:TreeStore>
            </Store>
        </ext:TreeList>
    </form>
</body>
</html>