{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{block name='header_banner'}
  <div class="header-banner">
    <div class="mobytic-banner-message">
      <div class="mobytic-message">
        <span class="mobytic-icon"><img src="../..{$urls.theme_assets}icons/icon-delivery.svg"
            alt="icon de livraison"></span>
        Livraison en France (Corse), Allemagne, Belgique et Luxembourg
      </div>
    </div>
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container">

      {* Desktop Nav *}
      <div class="row hidden-sm-down">

        {* Logo *}
        <div class="col-md-2 col-sm-4" id="_desktop_logo">
          {if $shop.logo_details}
            {if $page.page_name == 'index'}
              <h1>
                {renderLogo}
              </h1>
            {else}
              {renderLogo}
            {/if}
          {/if}
        </div>

        {* Menu *}
        <div class="header-top-right col-md-8 col-sm-4">
          {hook h='displayTop'}
        </div>

        {* Icons *}
        <div id="mobytic-icons-list" class="col-md-2 col-sm-4">
          {hook h='displayNav2'}
        </div>

      </div>



      {* Mobile Nav *}
      <div class="col-xs-12 hidden-md-up text-sm-center mobile">

        <div id="menu-icon"><i class="material-icons d-inline">&#xE5D2;</i></div>
 
        <div class="top-logo" id="_mobile_logo"></div>

        <div id="_mobile_user_info"></div>
        <div id="_mobile_cart"></div>

      </div>

    </div>

    {* Mobile Menu *}
  </div>
  <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
    <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
    <div class="js-top-menu-bottom">
      <div id="_mobile_currency_selector"></div>
      <div id="_mobile_language_selector"></div>
      <div id="_mobile_contact_link"></div>
    </div>
  </div>
  {hook h='displayNavFullWidth'}
{/block}