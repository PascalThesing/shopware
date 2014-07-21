{extends file="frontend/index/index.tpl"}

{* Javascript *}
{block name="frontend_index_header_javascript" append}
    <script type="text/javascript">
        //<![CDATA[
        if(top!=self){
            top.location=self.location;
        }
        //]]>
    </script>
{/block}

{* Include the necessary stylesheets. We need inline styles here due to the fact that the colors are configuratable. *}
{block name="frontend_index_header_css_screen" append}
    <style type="text/css">
        #confirm .table, #confirm .country-notice {
            background: {config name=baskettablecolor};
        }
        #confirm .table .table_head {
            color: {config name=basketheaderfontcolor};
            background: {config name=basketheadercolor};
        }
    </style>
{/block}

{* Hide breadcrumb *}
{block name='frontend_index_breadcrumb'}{/block}

{block name="frontend_index_content_top"}
    {* Step box *}
    {include file="frontend/register/steps.tpl" sStepActive="paymentShipping"}
{/block}

{* Hide sidebar left *}
{block name='frontend_index_content_left'}{/block}

{* Main content *}
{block name="frontend_index_content"}
    <div class="content block content--confirm product--table" data-ajax-shipping-payment="true">
        {include file="frontend/checkout/shipping_payment_core.tpl"}
    </div>
{/block}
