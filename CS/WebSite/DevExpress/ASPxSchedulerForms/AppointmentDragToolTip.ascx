<%@ Control Language="C#" AutoEventWireup="true" Inherits="AppointmentDragToolTip" CodeFile="AppointmentDragToolTip.ascx.cs" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<div style="white-space:nowrap;">
    <dx:ASPxLabel ID="lblInterval" runat="server" Text="CustomDragAppointmentTooltip" EnableClientSideAPI="true">
        </dx:ASPxLabel>
    <br />
    <dx:ASPxLabel ID="lblInfo" runat="server" EnableClientSideAPI="true"></dx:ASPxLabel>
</div>

<script id="dxss_ASPxClientAppointmentDragTooltip" type="text/javascript"><!--
    ASPxClientAppointmentDragTooltip = ASPx.CreateClass(ASPxClientToolTipBase, {
        CalculatePosition: function(bounds) {
            return new ASPxClientPoint(bounds.GetLeft(), bounds.GetTop() - bounds.GetHeight());
        },
        Update: function (toolTipData) {
            var stringInterval = this.GetToolTipContent(toolTipData);
            var oldText = this.controls.lblInterval.GetText();
            if (oldText != stringInterval)
                this.controls.lblInterval.SetText(stringInterval);
        },
        GetToolTipContent: function(toolTipData) {	
	        var interval = toolTipData.GetInterval();
	        return this.ConvertIntervalToString(interval);
        }
    });
//--></script>