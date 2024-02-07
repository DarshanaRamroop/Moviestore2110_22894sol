<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="regis.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week5.regiss" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<link href="accordion.css" rel="stylesheet" />
<link href="BalloonPopupOvalStyle.css" rel="stylesheet" />
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div id="container">
        <div id="leftSide">
            <ajaxToolkit:ToolkitScriptManager runat="server" ID="ScriptManager1">
        <ControlBundles>
            <ajaxToolkit:ControlBundle Name="Accordion"/>
        </ControlBundles>
    </ajaxToolkit:ToolkitScriptManager>
    <div class="demoarea">
        <div class="demoheading"></div>
    
        <ajaxToolkit:Accordion ID="MyAccordion" runat="server" SelectedIndex="0"
            HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
            ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40" 
            TransitionDuration="250" AutoSize="None" RequireOpenedPane="false" SuppressHeaderPostbacks="true">
           <Panes>
            <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                <Header><a href="" class="accordionLink">Personal Details</a></Header>
                <Content>
                    <div class="form">
     <asp:Label ID="lblFname" runat="server" Text="First Name:"
         AssociatedControlID="txtFname"></asp:Label>
     <div class="div_texbox">
         <asp:TextBox ID="txtFname" runat="server" CssClass="formcontrol"></asp:TextBox>
         <asp:RequiredFieldValidator ID="reqFname"
             ControlToValidate="txtFname" runat="server"
             ErrorMessage="Required"></asp:RequiredFieldValidator>
     </div>
     <asp:Label ID="lblLname" runat="server" Text="Last Name:"
         AssociatedControlID="txtLname"></asp:Label>
     <div class="div_texbox">
         <asp:TextBox ID="txtLname" runat="server" CssClass="formcontrol"></asp:TextBox>
         <asp:RequiredFieldValidator ID="reqLname"
             ControlToValidate="txtLname" runat="server"
             ErrorMessage="Required"></asp:RequiredFieldValidator>
     </div>
     <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"
         AssociatedControlID="txtDob"></asp:Label>
     <div class="div_texbox">
         <asp:TextBox ID="txtDob" runat="server" TextMode="Date"
             CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="reqDob" runat="server"
             ErrorMessage="Required"
             ControlToValidate="txtDob"></asp:RequiredFieldValidator><br />
     </div>
 </div>
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
                <Header><a href="" class="accordionLink">Contact Details </a></Header>
                <Content>
                   <div class="form">
     <asp:Label ID="lblCountry" runat="server" Text="Country"
         AssociatedControlID="ddlCountry"></asp:Label>
     <div class="div_texbox">
         <asp:DropDownList ID="ddlCountry" runat="server"
             CssClass="form-control">
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
             ControlToValidate="ddlCountry" runat="server"
             ErrorMessage="Required"></asp:RequiredFieldValidator>
     </div>
     <asp:Label ID="lblStreet" runat="server" Text="Street"
         AssociatedControlID="txtStreet"></asp:Label>
     <div class="div_texbox">
         <asp:TextBox ID="txtStreet" runat="server" CssClass="formcontrol"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
             ControlToValidate="txtStreet" runat="server"
             ErrorMessage="Required"></asp:RequiredFieldValidator>
     </div>
     <asp:Label ID="lblEmail" runat="server" Text="Email"
         AssociatedControlID="txtEmail"></asp:Label>
     <div class="div_texbox">
         <asp:TextBox ID="txtEmail" runat="server" CssClass="formcontrol"></asp:TextBox>
         <asp:RequiredFieldValidator ID="reqEmail"
             ControlToValidate="txtEmail" runat="server"
             ErrorMessage="Required"></asp:RequiredFieldValidator><br />
         <asp:RegularExpressionValidator ID="RegEmail" runat="server"
             ControlToValidate="txtEmail" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zAZ0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
             ErrorMessage="Not Valid"></asp:RegularExpressionValidator>
     </div>
 </div>
                    
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
                <Header><a href="" class="accordionLink">Login Details</a></Header>
                <Content>
                                  <div class="form">
                    <asp:Label ID="lblUsername" runat="server" Text="Username"
                        AssociatedControlID="txtUsername"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtUsername" runat="server"
                            CssClass="form-control"></asp:TextBox>
                          <asp:Panel ID="Panel2" runat="server">
Username must be 5 characters.
        </asp:Panel>
        <ajaxToolkit:BalloonPopupExtender ID="PopupControlExtender2" runat="server" TargetControlID="MessageTextBox"
            BalloonPopupControlID="Panel2" Position="BottomRight" BalloonStyle="Cloud" BalloonSize="Small"
            UseShadow="false" DisplayOnClick="true" DisplayOnFocus="true" />
                        <asp:RequiredFieldValidator ID="reqUsername"
                            ControlToValidate="txtUsername" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="regUsername"
                            ControlToValidate="txtUsername" ValidationExpression="^[a-zA-Z]{5,}$"
                            runat="server" ErrorMessage="Username must be minimum 5
characters"></asp:RegularExpressionValidator>
                    </div>
                    <asp:Label ID="lblPassword" runat="server" Text="Password"
                        AssociatedControlID="txtPassword"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtPassword" runat="server"
                            TextMode="Password" CssClass="form-control"></asp:TextBox>
                        <asp:Label ID="TextBox2_HelpLabel" runat="server" /><br /><br />
        <ajaxToolkit:PasswordStrength ID="PasswordStrength2" runat="server" TargetControlID="txtpassword"
            DisplayPosition="RightSide" 
            StrengthIndicatorType="BarIndicator"
            PreferredPasswordLength="15"
            HelpStatusLabelID="TextBox2_HelpLabel"
            
            StrengthStyles="BarIndicator_TextBox2_weak;BarIndicator_TextBox2_average;BarIndicator_TextBox2_good"
            
            BarBorderCssClass="BarBorder_TextBox2"
            MinimumNumericCharacters="1"
            MinimumSymbolCharacters="1"
            TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
            RequiresUpperAndLowerCaseCharacters="true" />
                        <asp:RequiredFieldValidator ID="reqPassword"
                            ControlToValidate="txtPassword" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator><br />
                        
                    </div>
                    <asp:Label ID="lblCpassword" runat="server" Text="Confirm
Password"
                        AssociatedControlID="txtCpassword"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtCpassword" TextMode="Password"
                            runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqCpassword"
                            ControlToValidate="txtCpassword" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator><br />
                        <asp:CompareValidator ID="conPassword" runat="server"
                            ControlToCompare="txtPassword" ControlToValidate="txtCpassword"
                            ErrorMessage="Password does not match"></asp:CompareValidator>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text="Upload
picture"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="formcontrol" />
                </div>
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane ID="AccordionPane4" runat="server">
                <Header><a href="" class="accordionLink">4. What is ASP.NET AJAX?</a></Header>
                <Content>
                    <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" CssClass="btn btnoutline-primary btn-block" Text="Register" />
 <asp:Button OnClick="btnClear_Click" ID="btnClear" runat="server" CssClass="btn btnoutline-danger btn-block" Text="Clear All" CausesValidation="false" />
 <br />
 <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </Content>
            </ajaxToolkit:AccordionPane>
            </Panes>
        </ajaxToolkit:Accordion>
        
        Fade Transitions: <input id="fade" type="checkbox" onclick="toggleFade();" value="false" /><br />
        AutoSize: <select id="autosize" onchange="changeAutoSize();">
            <option selected="selected">None</option>
            <option>Limit</option>
            <option>Fill</option>
        </select>
        
        <script language="javascript" type="text/javascript">
            function toggleFade() {
                var behavior = $find('ctl00_SampleContent_MyAccordion_AccordionExtender');
                if (behavior) {
                    behavior.set_FadeTransitions(!behavior.get_FadeTransitions());
                }
            }
            function changeAutoSize() {
                var behavior = $find('ctl00_SampleContent_MyAccordion_AccordionExtender');
                var ctrl = $get('autosize');
                if (behavior) {
                    var size = 'None';
                    switch (ctrl.selectedIndex) {
                        case 0 :
                            behavior.get_element().style.height = 'auto';
                            size = Sys.Extended.UI.AutoSize.None;
                            break;
                        case 1 :
                            behavior.get_element().style.height = '400px';
                            size = Sys.Extended.UI.AutoSize.Limit;
                            break;
                        case 2 :
                            behavior.get_element().style.height = '400px';
                            size = Sys.Extended.UI.AutoSize.Fill;
                            break;
                    }
                    behavior.set_AutoSize(size);
                }
                if (document.focus) {
                    document.focus();
                }
            }
        </script>
    </div>
    <div class="demobottom"></div>
    
    <asp:Panel ID="description_HeaderPanel" runat="server" style="cursor: pointer;">
        <div class="heading">
            <asp:ImageButton ID="Description_ToggleImage" runat="server" ImageUrl="~/images/collapse.jpg" AlternateText="collapse"  />
            Accordion Description
        </div>
    </asp:Panel>
    <asp:Panel id="description_ContentPanel" runat="server" style="overflow:hidden;">
        <p>
            The Accordion is a web control that allows you to provide multiple panes and display them one at a time.
            It is like having several <asp:HyperLink runat="server" NavigateUrl="~/CollapsiblePanel/CollapsiblePanel.aspx" Text="CollapsiblePanels" />
            where only one can be expanded at a time.  The Accordion is implemented as a web control that contains
            AccordionPane web controls. Each AccordionPane control has a template for its Header and its Content.
            We keep track of the selected pane so it stays visible across postbacks.
        </p>
        <br />
        It also supports three AutoSize modes so it can fit in a variety of layouts.
        <ul>
            <li><b>None</b> - The Accordion grows/shrinks without restriction.  This can cause other elements on your
                page to move up and down with it.</li>            
            <li><b>Limit</b> - The Accordion never grows larger than the value specified by its Height property.  This
                will cause the content to scroll if it is too large to be displayed.</li>
            <li><b>Fill</b> - The Accordion always stays the exact same size as its Height property.  This will cause
                the content to be expanded or shrunk if it isn't the right size.</li>
        </ul>
        <p>
            The Accordion is written using an extender like most of the other extenders in the AJAX Control Toolkit.  The
            extender expects its input in a very specific hierarchy of container elements (like divs), so the Accordion
            and AccordionPane web controls are used to generate the expected input for the extender.  The extender can also be
            used on its own if you provide it appropriate input.
        </p>
        <br />
        <p>
            The Accordion can also be databound.  Simply specify a data source through the <b>DataSource</b> or
            <b>DataSourceID</b> properties and then set your data items in the HeaderTemplate and ContentTemplate properties.
        </p>
    </asp:Panel>

    <asp:Panel ID="properties_HeaderPanel" runat="server" style="cursor: pointer;">
        <div class="heading">
            <asp:ImageButton ID="Properties_ToggleImage" runat="server" ImageUrl="~/images/expand.jpg" AlternateText="expand"  />
            Accordion Properties
        </div>
    </asp:Panel>
    <asp:Panel id="properties_ContentPanel" runat="server" style="overflow:hidden;" Height="0px">
        <p>The control above is initialized with this code. The <em>italic</em> properties are optional:</p>
<pre>&lt;ajaxToolkit:Accordion
    <em>ID</em>="MyAccordion"
    runat="Server"
    <em>SelectedIndex</em>="0"
    <em>HeaderCssClass</em>="accordionHeader"
    <em>HeaderSelectedCssClass</em>="accordionHeaderSelected"
    <em>ContentCssClass</em>="accordionContent"
    <em>AutoSize</em>="None"
    <em>FadeTransitions</em>="true"
    <em>TransitionDuration</em>="250"
    <em>FramesPerSecond</em>="40"
    <em>RequireOpenedPane</em>="false"
    <em>SuppressHeaderPostbacks</em>="true"&gt;
    <strong><em>&lt;Panes&gt;</em></strong>
        &lt;ajaxToolkit:AccordionPane
            <em>HeaderCssClass</em>="accordionHeader"
            <em>HeaderSelectedCssClass</em>="accordionHeaderSelected"
            <em>ContentCssClass</em>="accordionContent"&gt;
            &lt;Header&gt; . . . &lt;/Header&gt;
            &lt;Content&gt; . . . &lt;/Content&gt;
        &lt;/ajaxToolkit:AccordionPane&gt;        
        .
        .
        .
    <strong><em>&lt;/Panes&gt;</em></strong>            
    <em>&lt;HeaderTemplate&gt;...&lt;/HeaderTemplate&gt;</em>
    <em>&lt;ContentTemplate&gt;...&lt;/ContentTemplate&gt;</em>
&lt;/ajaxToolkit:Accordion&gt;</pre>
        <ul>
            <li><strong>SelectedIndex</strong> - The AccordionPane to be initially visible</li>
            <li><strong>HeaderCssClass</strong> - Name of the CSS class to use for the headers.  This can be either applied to the Accordion as a default for all AccordionPanes, or an individual AccordionPane.</li>
            <li><strong>HeaderSelectedCssClass</strong> - Name of the CSS class to use for the selected header.  This can be either applied to the Accordion as a default for all AccordionPanes, or an individual AccordionPane.</li>
            <li><strong>ContentCssClass</strong> - Name of the CSS class to use for the content.  This can be either applied to the Accordion as a default for all AccordionPanes, or an individual AccordionPane.</li>
            <li><strong>FadeTransitions</strong> - True to use the fading transition effect, false for standard transitions.</li>
            <li><strong>TransitionDuration</strong> - Number of milliseconds to animate the transitions</li>
            <li><strong>FramesPerSecond</strong> - Number of frames per second used in the transition animations</li>
            <li><strong>AutoSize</strong> - Restrict the growth of the Accordion.  The values of the AutoSize enumeration are described above.</li>
            <li><strong>RequireOpenedPane</strong> - Prevent closing the currently opened pane when its header is clicked (which ensures one pane is always open).  The default value is true.</li>
            <li><strong>SuppressHeaderPostbacks</strong> - Prevent the client-side click handlers of elements inside a header from firing (this is especially useful when you want to include hyperlinks in your headers for accessibility)</li>
            <li><strong>Panes</strong> - Collection of AccordionPane controls</li>
            <li><strong>HeaderTemplate</strong> - The Header template contains the markup that should be used for an pane's header when databinding</li>
            <li><strong>ContentTemplate</strong> - The Content template contains the markup that should be used for a pane's content when databinding</li>
            <li><strong>DataSource</strong> - The data source to use.  DataBind() must be called.</li>
            <li><strong>DataSourceID</strong> - The ID of the data source to use.</li>
            <li><strong>DataMember</strong> - The member to bind to when using a DataSourceID</li>
        </ul>        
    </asp:Panel>
    <asp:Panel ID="KnownIssues_HeaderPanel" runat="server" style="cursor: pointer;">
        <div class="heading">
            <asp:ImageButton ID="KnownIssues_ToggleImage" runat="server" ImageUrl="~/images/collapse.jpg" AlternateText="collapse"  />
            Accordion Known Issues
        </div>
    </asp:Panel>
    <asp:Panel id="KnownIssues_ContentPanel" runat="server" style="overflow:hidden;">
        <p>
            The AutoSize "Limit" mode works exactly the same as the "Fill" mode for Internet Explorer 6 and 7 because
            they do not support the max-height CSS property.
        </p>
        <br />
        <p>
            If you place the Accordion inside a &lt;table&gt; tag and have FadeTransitions set to true in
            Internet Explorer 6, it will affect the spacing between Accordion Panes.
        </p>
        <br />
        <p>
            Also, when viewing the demo in Internet Explorer 6, maximizing the browser at higher resolutions
            like 1600 x 1200 will cause the transitions to animate slower than at lower resolutions like 1280 x 1024.
        </p>
    </asp:Panel>    
    <ajaxToolkit:CollapsiblePanelExtender ID="cpeDescription" runat="Server" 
        TargetControlID="description_ContentPanel"
        ExpandControlID="description_HeaderPanel"
        CollapseControlID="description_HeaderPanel"
        Collapsed="False" 
        ImageControlID="description_ToggleImage" />
    <ajaxToolkit:CollapsiblePanelExtender ID="cpeProperties" runat="Server" 
        TargetControlID="properties_ContentPanel"
        ExpandControlID="properties_HeaderPanel"
        CollapseControlID="properties_HeaderPanel"
        Collapsed="True" 
        ImageControlID="properties_ToggleImage" />
    <ajaxToolkit:CollapsiblePanelExtender ID="cpeKnownIssues" runat="Server" 
        TargetControlID="KnownIssues_ContentPanel"
        ExpandControlID="KnownIssues_HeaderPanel"
        CollapseControlID="KnownIssues_HeaderPanel"
        Collapsed="False"
        ImageControlID="KnownIssues_ToggleImage" />  
        </div>
    </div>
</asp:Content>
