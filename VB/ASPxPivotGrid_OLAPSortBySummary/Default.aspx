<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb"
    Inherits="ASPxPivotGrid_OLAPSortBySummary._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v22.1, Version=22.1.3.0,
    Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid"
    TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server"
        OnLoad="ASPxPivotGrid1_Load" ClientIDMode="AutoID" IsMaterialDesign="False">
            <Fields>
                <dx:PivotGridField ID="fieldMonth" Area="RowArea" AreaIndex="0"
                Caption="Month">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="[Date].[Month of Year].[Month of Year]" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCountry" Area="ColumnArea" AreaIndex="0" Caption="Country">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="[Customer].[Country].[Country]" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCity" Area="ColumnArea" AreaIndex="1" Caption="City">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="[Customer].[City].[City]" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldSales" Area="DataArea" AreaIndex="0" Caption="Sales">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="[Measures].[Internet Sales Amount]" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
            </Fields>
        </dx:ASPxPivotGrid>
    </div>
    </form>
</body>
</html>