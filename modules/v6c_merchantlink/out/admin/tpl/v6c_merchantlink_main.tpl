[{*--
  * Use shop_main.tpl as a basis for merging diffs on updates
--*}]

[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

[{ if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
[{else}]
    [{assign var="readonly" value=""}]
[{/if}]

[{cycle assign="_clear_" values=",2" }]

<form name="transfer" id="transfer" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="cl" value="v6c_merchantlinkmain">
    <input type="hidden" name="fnc" value="">
    <input type="hidden" name="actshop" value="[{$oViewConf->getActiveShopId()}]">
    <input type="hidden" name="updatenav" value="">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>

<form name="myedit" id="myedit" action="[{ $oViewConf->getSelfLink() }]" method="post">
[{ $oViewConf->getHiddenSid() }]
<input type="hidden" name="cl" value="v6c_merchantlinkmain">
<input type="hidden" name="fnc" value="save">
<input type="hidden" name="oxid" value="[{ $oxid }]">
<input type="hidden" name="editval[oxshops__oxid]" value="[{ $oxid }]">


    <table border=0>

        <tr class="conftext[{cycle}]">
         <td valign="middle">
            <input type="submit" class="confinput" name="save" value="[{ oxmultilang ident="V6C_INSTALL" }]" onClick="Javascript:document.myedit.fnc.value='v6cInstallML'" [{ $readonly }] [{$v6c_sMlInstalled}]>
            [{ oxinputhelp ident="V6C_HELP_INSTLMERCKLNK" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_INSTLMERCKLNK" }]
         </td>
        </tr>
<!--
        <tr class="conftext[{cycle}]">
         <td valign="middle">
			<textarea class="txtfield" name=confaarrs[v6c_aPayPalLangMap] [{ $readonly }]>[{$confaarrs.v6c_aPayPalLangMap}]</textarea>
			[{ oxinputhelp ident="V6C_HELP_PAYPALLANGMAP" }]
         </td>
         <td valign="middle" width="100%">
          	[{ oxmultilang ident="V6C_PAYPALLANGMAP" }]
         </td>
        </tr>
-->
        <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_sPayPalEmail] value="[{$confstrs.v6c_sPayPalEmail}]" [{ $readonly}]>
			[{ oxinputhelp ident="V6C_HELP_PAYPALEMAIL" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_PAYPALEMAIL" }]
         </td>
        </tr>

        <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_sPayPalId] value="[{$confstrs.v6c_sPayPalId}]" [{ $readonly}]>
			[{ oxinputhelp ident="V6C_HELP_PAYPALID" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_PAYPALID" }]
         </td>
        </tr>

        <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_sPayPalNvpUsr] value="[{$confstrs.v6c_sPayPalNvpUsr}]" [{ $readonly}]>
			[{ oxinputhelp ident="V6C_HELP_PAYPALNVPUSR" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_PAYPALNVPUSR" }]
         </td>
        </tr>

        <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_sPayPalNvpPwd] value="[{$confstrs.v6c_sPayPalNvpPwd}]" [{ $readonly}]>
			[{ oxinputhelp ident="V6C_HELP_PAYPALNVPPWD" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_PAYPALNVPPWD" }]
         </td>
        </tr>

        <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_sPayPalNvpSig] value="[{$confstrs.v6c_sPayPalNvpSig}]" [{ $readonly}]>
			[{ oxinputhelp ident="V6C_HELP_PAYPALNVPSIG" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_PAYPALNVPSIG" }]
         </td>
        </tr>

        <tr class="conftext[{cycle}]">
         <td valign="middle">
            <input type=hidden name=confbools[v6c_blPayPalSslPdt] value=false>
            <input type=checkbox name=confbools[v6c_blPayPalSslPdt] value=true  [{if ($confbools.v6c_blPayPalSslPdt)}]checked[{/if}] [{ $readonly }]>
            [{ oxinputhelp ident="V6C_HELP_PAYPALSSLPDT" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_PAYPALSSLPDT" }]
         </td>
        </tr>

       

        <tr>
         <td colspan="2" align="left" class="nowrap">
         	[{ oxmultilang ident="ECS_SANDBOX" }]
         </td>
         </tr>
        
        <tr class="conftext[{cycle}]">
         <td valign="middle">
            <input type=hidden name=confbools[v6c_blMrchLnkTst] value=false>
            <input type=checkbox name=confbools[v6c_blMrchLnkTst] value=true  [{if ($confbools.v6c_blMrchLnkTst)}]checked[{/if}] [{ $readonly }]>
            [{ oxinputhelp ident="V6C_HELP_MERCHLINKTEST" }]
         </td>
         <td valign="middle" width="100%">
          [{ oxmultilang ident="V6C_MERCHLINKTEST" }]
         </td>
        </tr>

        <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_sPpSbNvpUsr] value="[{$confstrs.v6c_sPpSbNvpUsr}]" [{ $readonly}]>
			[{ oxinputhelp ident="V6C_HELP_PAYPALSBNVPUSR" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_PAYPALSBNVPUSR" }]
         </td>
        </tr>

        <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_sPpSbNvpPwd] value="[{$confstrs.v6c_sPpSbNvpPwd}]" [{ $readonly}]>
			[{ oxinputhelp ident="V6C_HELP_PAYPALSBNVPPWD" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_PAYPALSBNVPPWD" }]
         </td>
        </tr>

        <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_sPpSbNvpSig] value="[{$confstrs.v6c_sPpSbNvpSig}]" [{ $readonly}]>
			[{ oxinputhelp ident="V6C_HELP_PAYPALSBNVPSIG" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="V6C_PAYPALSBNVPSIG" }]
         </td>
        </tr>
        
         
         <tr>
         <td colspan="2" align="left" class="nowrap">
         	[{ oxmultilang ident="ECS_SETTINGS" }]
         </td>
         </tr>

                
         <tr class="conftext[{cycle}]">
         <td valign="middle">
            <input type=hidden name=confbools[v6c_Login] value=false>
            <input type=checkbox name=confbools[v6c_Login] value=true  [{if ($confbools.v6c_Login)}]checked[{/if}] [{ $readonly }]>
            [{ oxinputhelp ident="ECS_HELP_LANDING" }]
         </td>
         <td valign="middle" width="100%">
          [{ oxmultilang ident="ECS_LANDING" }]
         </td>
        </tr>
         
        
         <tr class="conftext[{cycle}]">
         <td valign="middle">
            <input type=hidden name=confbools[v6c_Allnote] value=false>
            <input type=checkbox name=confbools[v6c_Allnote] value=true  [{if ($confbools.v6c_Allnote)}]checked[{/if}] [{ $readonly }]>
            [{ oxinputhelp ident="ECS_HELP_ALLNOTE" }]
         </td>
         <td valign="middle" width="100%">
          [{ oxmultilang ident="ECS_ALLNOTE" }]
         </td>
        </tr>
        
         <tr class="conftext[{cycle}]">
         <td valign="middle">
            <input type=hidden name=confbools[v6c_Brandname] value=false>
            <input type=checkbox name=confbools[v6c_Brandname] value=true  [{if ($confbools.v6c_Brandname)}]checked[{/if}] [{ $readonly }]>
            [{ oxinputhelp ident="ECS_HELP_BRANDNAME" }]
         </td>
         <td valign="middle" width="100%">
          [{ oxmultilang ident="ECS_BRANDNAME" }]
         </td>
        </tr>
        
         <tr class="conftext[{cycle}]">
         <td valign="middle">
            <input type=hidden name=confbools[v6c_Logotyp] value=false>
            <input type=checkbox name=confbools[v6c_Logotyp] value=true  [{if ($confbools.v6c_Logotyp)}]checked[{/if}] [{ $readonly }]>
            [{ oxinputhelp ident="ECS_HELP_LOGOTYP" }]
         </td>
         <td valign="middle" width="100%">
          [{ oxmultilang ident="ECS_LOGOTYP" }]
         </td>
        </tr>
        
         <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_Logourl] value="[{$confstrs.v6c_Logourl}]" [{ $readonly}]>
			[{ oxinputhelp ident="ECS_HELP_LOGOURL" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="ECS_LOGOURL" }]
         </td>
        </tr>
        
          <tr class="conftext[{cycle}]">
         <td valign="middle">
			<input type=text class="txt" name=confstrs[v6c_Color] value="[{$confstrs.v6c_Color}]" [{ $readonly}]>
			[{ oxinputhelp ident="ECS_HELP_COLOR" }]
         </td>
         <td valign="middle" width="100%" >
            [{ oxmultilang ident="ECS_COLOR" }]
         </td>
        </tr>
        
         <tr class="conftext[{cycle}]">
         <td valign="middle">
            <input type=hidden name=confbools[v6c_Sideb] value=false>
            <input type=checkbox name=confbools[v6c_Sideb] value=true  [{if ($confbools.v6c_Sideb)}]checked[{/if}] [{ $readonly }]>
            [{ oxinputhelp ident="ECS_HELP_SIDEB" }]
         </td>
         <td valign="middle" width="100%">
          [{ oxmultilang ident="ECS_SIDEB" }]
         </td>
        </tr>

          <tr>
         <td colspan="2" align="left" class="nowrap">
         	[{ oxmultilang ident="ECS_PBTCART" }]
         </td>
         </tr>
                
        <tr class="conftext[{cycle}]">
         <td valign="middle">
            <input type=hidden name=confbools[v6c_altcart] value=false>
            <input type=checkbox name=confbools[v6c_altcart] value=true  [{if ($confbools.v6c_altcart)}]checked[{/if}] [{ $readonly }]>
            [{ oxinputhelp ident="ECS_HELP_ALTCART" }]
         </td>
         <td valign="middle" width="100%">
          [{ oxmultilang ident="ECS_ALTCART" }]
         </td>
        </tr>
        


 
		<!-- Forcing width of first column -->
        <tr>
         <td valign="middle" class="nowrap">
         	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </td>
         <td valign="middle" width="100%"></td>
        </tr>
    </table>

	<input type="submit" class="confinput" name="save" value="[{ oxmultilang ident="GENERAL_SAVE" }]" onClick="Javascript:document.myedit.fnc.value='save'"" [{ $readonly }]>

</form>

[{*include file="bottomnaviitem.tpl"*}]

[{include file="bottomitem.tpl"}]