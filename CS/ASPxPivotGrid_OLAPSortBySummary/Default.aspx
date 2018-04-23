<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="ASPxPivotGrid_OLAPSortBySummary._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v14.1, Version=14.1.7.0,
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
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="AccessDataSource1"
        OnLoad="ASPxPivotGrid1_Load">
            <Fields>
                <dx:PivotGridField ID="fieldMonth" Area="RowArea" AreaIndex="0"
                Caption="Month" FieldName="[Date].[Month of Year].[Month of Year]">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCountry" Area="ColumnArea" AreaIndex="0" Caption="Country"
                    FieldName="[Customer].[Country].[Country]">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCity" Area="ColumnArea" AreaIndex="1" Caption="City"
                    FieldName="[Customer].[City].[City]">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldSales" Area="DataArea" AreaIndex="0" Caption="Sales"
                    FieldName="[Measures].[Internet Sales Amount]">
                </dx:PivotGridField>
            </Fields>
        </dx:ASPxPivotGrid>
    </div>
    </form>
</body>
</html>
