<%@ Page Language="C#" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (X.IsAjaxRequest)
        {
            //We do not need to DataBind on an DirectEvent
            return;
        }

        this.Store1.DataSource = new object[]
            {
                new object[] { "3m Co", 71.72, 0.02, 0.03, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Manufacturing"},
                new object[] { "Alcoa Inc", 29.01, 0.42, 1.47, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Manufacturing"},
                new object[] { "Altria Group Inc", 83.81, 0.28, 0.34, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Manufacturing"},
                new object[] { "American Express Company", 52.55, 0.01, 0.02, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Finance"},
                new object[] { "American International Group, Inc.", 64.13, 0.31, 0.49, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Services"},
                new object[] { "AT&T Inc.", 31.61, -0.48, -1.54, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Services"},
                new object[] { "Boeing Co.", 75.43, 0.53, 0.71, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Manufacturing"},
                new object[] { "Caterpillar Inc.", 67.27, 0.92, 1.39, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Services"},
                new object[] { "Citigroup, Inc.", 49.37, 0.02, 0.04, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Finance"},
                new object[] { "E.I. du Pont de Nemours and Company", 40.48, 0.51, 1.28, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Manufacturing"},
                new object[] { "Exxon Mobil Corp", 68.1, -0.43, -0.64, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Manufacturing"},
                new object[] { "General Electric Company", 34.14, -0.08, -0.23, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Manufacturing"},
                new object[] { "General Motors Corporation", 30.27, 1.09, 3.74, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Automotive"},
                new object[] { "Hewlett-Packard Co.", 36.53, -0.03, -0.08, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Computer"},
                new object[] { "Honeywell Intl Inc", 38.77, 0.05, 0.13, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Manufacturing"},
                new object[] { "Intel Corporation", 19.88, 0.31, 1.58, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Computer"},
                new object[] { "International Business Machines", 81.41, 0.44, 0.54, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Computer"},
                new object[] { "Johnson & Johnson", 64.72, 0.06, 0.09, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Medical"},
                new object[] { "JP Morgan & Chase & Co", 45.73, 0.07, 0.15, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Finance"},
                new object[] { "McDonald\"s Corporation", 36.76, 0.86, 2.40, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Food"},
                new object[] { "Merck & Co., Inc.", 40.96, 0.41, 1.01, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Medical"},
                new object[] { "Microsoft Corporation", 25.84, 0.14, 0.54, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Computer"},
                new object[] { "Pfizer Inc", 27.96, 0.4, 1.45, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Medical"},
                new object[] { "The Coca-Cola Company", 45.07, 0.26, 0.58, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Food"},
                new object[] { "The Home Depot, Inc.", 34.64, 0.35, 1.02, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Retail"},
                new object[] { "The Procter & Gamble Company", 61.91, 0.01, 0.02, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Manufacturing"},
                new object[] { "United Technologies Corporation", 63.26, 0.55, 0.88, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Computer"},
                new object[] { "Verizon Communications", 35.57, 0.39, 1.11, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Services"},
                new object[] { "Wal-Mart Stores, Inc.", 45.45, 0.73, 1.63, DateTime.Now.ToString("yyyy-MM-dd hh:mm:tt"), "Retail"}
            };

        this.Store1.DataBind();
    }
</script>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>RowExpander with FormPanel Detail - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />

    <ext:ResourcePlaceHolder runat="server" Mode="Script" />

    <style>
        .white-footer .x-toolbar-footer{
          background-color: white !important;
       }
    </style>

    <script>
        var template = '<span style="color:{0};">{1}</span>';

        var change = function (value) {
            return Ext.String.format(template, (value > 0) ? "green" : "red", value);
        };

        var pctChange = function (value) {
            return Ext.String.format(template, (value > 0) ? "green" : "red", value + "%");
        };
    </script>

</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />

        <h1>RowExpander Plugin with FormPanel Detail</h1>

        <ext:GridPanel
            runat="server"
            Title="Expander Rows with control"
            Collapsible="true"
            AnimCollapse="true"
            IconCls="x-md md-icon-grid-on"
            Width="960">
            <Store>
                <ext:Store
                    ID="Store1"
                    runat="server"
                    IgnoreExtraFields="false"
                    PageSize="10">
                    <Model>
                        <ext:Model runat="server">
                            <Fields>
                                <ext:ModelField Name="company" />
                                <ext:ModelField Name="price" Type="Float" />
                                <ext:ModelField Name="change" Type="Float" />
                                <ext:ModelField Name="pctChange" Type="Float" />
                                <ext:ModelField Name="lastChange" Type="Date" DateFormat="yyyy-MM-dd hh:mm:tt" />
                                <ext:ModelField Name="industry" />
                            </Fields>
                        </ext:Model>
                    </Model>
                </ext:Store>
            </Store>
            <ColumnModel runat="server">
                <Columns>
                    <ext:Column
                        runat="server"
                        Text="Company"
                        DataIndex="company"
                        Flex="1"
                        />
                    <ext:Column runat="server" Text="Price" DataIndex="price">
                        <Renderer Format="UsMoney" />
                    </ext:Column>
                    <ext:Column runat="server" Text="Change" DataIndex="change">
                        <Renderer Fn="change" />
                    </ext:Column>
                    <ext:Column runat="server" Text="Change" DataIndex="pctChange">
                        <Renderer Fn="pctChange" />
                    </ext:Column>
                    <ext:DateColumn
                        runat="server"
                        Text="Last Updated"
                        DataIndex="lastChange"
                        Format="yyyy/MM/dd"
                        Width="105"
                        />
                </Columns>
            </ColumnModel>
            <Plugins>
                <ext:RowExpander runat="server" SingleExpand="false">
                    <Component>
                        <ext:FormPanel
                            runat="server"
                            BodyPadding="18"
                            Border="false"
                            DefaultAnchor="-5"
                            Cls="white-footer">
                            <Items>
                                <ext:TextField runat="server" Name="company" FieldLabel="Company" />
                                <ext:NumberField runat="server" Name="price" FieldLabel="Price" />
                                <ext:NumberField runat="server" Name="change" FieldLabel="Change" />
                                <ext:NumberField runat="server" Name="pctChange" FieldLabel="% Change" />
                                <ext:DateField
                                    runat="server"
                                    Name="lastChange"
                                    FieldLabel="Last Updated"
                                    Format="yyyy/MM/dd"
                                    />
                            </Items>

                            <Buttons>
                                <ext:Button runat="server" Text="Save" IconCls="x-md md-icon-save">
                                    <Listeners>
                                        <Click Handler="var grid = this.up('grid'), form = this.up('form');
                                                        grid.getRowExpander().collapseRow(grid.store.indexOf(form.record));
                                                        form.getForm().updateRecord(form.record);" />
                                    </Listeners>
                                </ext:Button>
                                <ext:Button runat="server" Text="Cancel" IconCls="x-md md-icon-cancel">
                                    <Listeners>
                                        <Click Handler="var grid = this.up('grid'), form = this.up('form');
                                                        grid.getRowExpander().collapseRow(grid.store.indexOf(form.record));" />
                                    </Listeners>
                                </ext:Button>
                            </Buttons>

                            <Listeners>
                                <AfterRender Handler="this.getForm().loadRecord(this.record);" />
                            </Listeners>
                        </ext:FormPanel>
                    </Component>
                </ext:RowExpander>
            </Plugins>
            <BottomBar>
                <ext:PagingToolbar runat="server" HideRefresh="true" />
            </BottomBar>
        </ext:GridPanel>
    </form>
</body>
</html>