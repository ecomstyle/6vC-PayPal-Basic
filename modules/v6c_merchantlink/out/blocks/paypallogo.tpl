[{assign var="oConf" value=$oViewConf->getConfig()}]

[{if $oConf->getConfigParam('v6c_Sideb')}]

   <a href="#" onclick="javascript:window.open('https://www.paypal.com/de/cgi-bin/webscr?cmd=xpt/cps/popup/OLCWhatIsPayPal-outside','olcwhatispaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=500, height=450');">
   <img src="[{ $oViewConf->getModuleUrl('v6c_merchantlink','out/src/paypal.png')}]" border="0" alt="" title="PayPal" />
   </a>
   
[{$smarty.block.parent}]
[{else}]
[{$smarty.block.parent}]
[{/if}]