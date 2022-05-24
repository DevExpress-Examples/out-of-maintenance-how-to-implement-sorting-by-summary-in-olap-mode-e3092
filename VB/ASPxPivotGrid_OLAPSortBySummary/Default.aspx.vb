Imports System
Imports System.Web.UI
Imports DevExpress.XtraPivotGrid

Namespace ASPxPivotGrid_OLAPSortBySummary
    Partial Public Class _Default
        Inherits Page

        Protected Overrides Sub OnInit(ByVal e As EventArgs)
            MyBase.OnInit(e)
            ASPxPivotGrid1.OLAPConnectionString = "provider=MSOLAP;" &
                "data source=https://demos.devexpress.com/Services/OLAP/msmdpump.dll;" &
                "initial catalog='Adventure Works DW Standard Edition';" &
                "cube name='Adventure Works'"
        End Sub
        Protected Sub ASPxPivotGrid1_Load(ByVal sender As Object, ByVal e As EventArgs)
            If IsCallback OrElse IsPostBack Then
                Return
            End If

            ' Expands the Australia column to be able to retrieve OLAP members 
            ' that correspond to the nested columns.
            ASPxPivotGrid1.ExpandValue(True, New Object() { "Australia" })

            ' Obtains OLAP members corresponding to the Australia and Bendigo values.
            Dim countryMember As IOLAPMember = ASPxPivotGrid1.GetFieldValueOLAPMember(fieldCountry, 0)
            Dim cityMember As IOLAPMember = ASPxPivotGrid1.GetFieldValueOLAPMember(fieldCity, 0)

            ' Exits if the OLAP members were not obtained successfully.
            If countryMember Is Nothing OrElse cityMember Is Nothing Then
                Return
            End If

            ' Specifies a data field whose summary values should be used to sort values
            ' of the Month field.
            fieldMonth.SortBySummaryInfo.Field = fieldSales

            ' Specifies a column by which the Month field values should be sorted.
            fieldMonth.SortBySummaryInfo.Conditions.Clear()
            fieldMonth.SortBySummaryInfo.Conditions.Add(New PivotGridFieldSortCondition(fieldCountry, _
                                                                 "Australia", countryMember.UniqueName))
            fieldMonth.SortBySummaryInfo.Conditions.Add(New PivotGridFieldSortCondition(fieldCity, _
                                                                      "Bendigo", cityMember.UniqueName))
        End Sub
    End Class
End Namespace
