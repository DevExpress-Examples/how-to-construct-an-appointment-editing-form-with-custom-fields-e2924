﻿<%@ Control Language="vb" AutoEventWireup="true" Inherits="SelectionToolTip" CodeFile="SelectionToolTip.ascx.vb" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<div runat="server" id="buttonDiv">
    <dx:ASPxButton ID="btnShowMenu" runat="server" AutoPostBack="False" AllowFocus="False">
        <Border BorderWidth="0px" />
        <Paddings Padding="0px" />
        <FocusRectPaddings Padding="4px" />
        <FocusRectBorder BorderStyle="None" BorderWidth="0px" />
    </dx:ASPxButton>
</div>