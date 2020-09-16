<%@ Page Language="C#" %>

<script runat="server">
    protected void ReloadData(object sender, DirectEventArgs e)
    {
        this.Chart1.GetStore().DataBind();
    }
</script>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Column Chart - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />

    <script>
        var saveChart = function (btn) {
            Ext.MessageBox.confirm('Confirm Download', 'Would you like to download the chart as an image?', function (choice) {
                if (choice === 'yes') {
                    btn.up('panel').down('chart').download();
                }
            });
        };
    </script>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />

        <h1>Chart Captions Sample</h1>

        <p>The chart below has captions to add descriptive texts to the chart area. The 'Title', 'Subtitle' and 'Credits' are keywords to use theme-formatted captions.</p>

        <p>Other customized captions can be added for further customization.</p>

        <p>Here, we use:</p>

        <ul>
            <li>a Title caption with no additional formatting</li>
            <li>a Credits caption right-aligned and italics</li>
            <li>a custom caption docked at bottom, blue tinted and 'Arial' font size of 10 pixels</li>
        </ul>

        <ext:Panel
            runat="server"
            Width="960"
            Height="600"
            Layout="Fit">
            <TopBar>
                <ext:Toolbar runat="server">
                    <Items>
                        <ext:ToolbarFill runat="server" />

                        <ext:Button
                            runat="server"
                            Text="Reload Data"
                            IconCls="x-md md-icon-refresh"
                            OnDirectClick="ReloadData"
                            />

                        <ext:Button
                            runat="server"
                            Text="Save Chart"
                            IconCls="x-md md-icon-save"
                            Handler="saveChart"
                            />
                    </Items>
                </ext:Toolbar>
            </TopBar>
            <Items>
                <ext:CartesianChart ID="Chart1" runat="server">
                    <Captions>
                        <Title Text="Search engine hits last year" />
                        <Credits Text="Source: Random number generator." Align="Right">
                            <Style FontStyle="italic" />
                        </Credits>
                        <Items>
                            <ext:ChartCaptionItem
                                Name="customOne"
                                Align="Left"
                                AlignTo="Series"
                                Text="Generated by: Ext.NET"
                                Docked="Bottom">
                                <Style FillStyle="blue" FontFamily="Arial" FontSize="10" />
                            </ext:ChartCaptionItem>
                        </Items>
                    </Captions>
                    <Store>
                        <ext:Store runat="server" Data="<%# Ext.Net.Examples.ChartData.GenerateData() %>" AutoDataBind="true">
                            <Model>
                                <ext:Model runat="server">
                                    <Fields>
                                        <ext:ModelField Name="Name" />
                                        <ext:ModelField Name="Data1" />
                                    </Fields>
                                </ext:Model>
                            </Model>
                        </ext:Store>
                    </Store>

                    <Axes>
                        <ext:NumericAxis
                            Position="Left"
                            Fields="Data1"
                            Grid="true"
                            Title="Number of Hits (x1000)"
                            Minimum="0">
                            <Renderer Handler="return Ext.util.Format.number(label, '0,0');" />
                        </ext:NumericAxis>

                        <ext:CategoryAxis Position="Bottom" Fields="Name" Title="Month of the Year">
                            <Label RotationDegrees="-45" />
                        </ext:CategoryAxis>
                    </Axes>
                    <Series>
                        <ext:BarSeries Highlight="true" XField="Name" YField="Data1">
                            <Tooltip runat="server" TrackMouse="true">
                                <Renderer Handler="toolTip.setTitle(record.get('Name') + ': ' + record.get('Data1'));" />
                            </Tooltip>
                            <Label
                                Display="InsideEnd"
                                Field="Data1"
                                Orientation="Horizontal"
                                Color="#333"
                                TextAlign="Center"
                                RotationDegrees="45">
                                <Renderer Handler="return Ext.util.Format.number(text, '0');" />
                            </Label>
                        </ext:BarSeries>
                    </Series>
                </ext:CartesianChart>
            </Items>
        </ext:Panel>
    </form>
</body>
</html>
