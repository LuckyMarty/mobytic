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
{extends file=$layout}

{block name='content'}

  <section id="main">
    <div class="cart-grid row">

      <!-- Left Block: cart product informations & shpping -->
      <div class="cart-grid-body col-lg-8">

        <!-- cart products detailed -->
        <div class="card cart-container">
          <div class="card-block">
            <h1 class="h1">{l s='Shopping Cart' d='Shop.Theme.Checkout'}</h1>
          </div>
          <hr class="separator">
          {block name='cart_overview'}
            {include file='checkout/_partials/cart-detailed.tpl' cart=$cart}
          {/block}
        </div>

        {block name='continue_shopping'}
          <a class="label" href="{$urls.pages.index}">
            <i class="material-icons">chevron_left</i>{l s='Continue shopping' d='Shop.Theme.Actions'}
          </a>
        {/block}

        <!-- shipping informations -->
        {block name='hook_shopping_cart_footer'}
          {hook h='displayShoppingCartFooter'}
        {/block}
      </div>

      <!-- Right Block: cart subtotal & cart total -->
      <div class="cart-grid-right col-lg-4">

        {block name='cart_summary'}
          <div class="card cart-summary">

            {block name='hook_shopping_cart'}
              {hook h='displayShoppingCart'}
            {/block}

            {block name='cart_totals'}
              {include file='checkout/_partials/cart-detailed-totals.tpl' cart=$cart}
            {/block}

            {block name='cart_actions'}
              {include file='checkout/_partials/cart-detailed-actions.tpl' cart=$cart}
            {/block}

          </div>
        {/block}

        {block name='hook_reassurance'}
          {hook h='displayReassurance'}
        {/block}

      </div>

    </div>

    {hook h='displayCrossSellingShoppingCart'}

  </section>
{/block}

{block name='mobytic_cart_fullwidth'}

  {* Full screen *}
  <div class="container" id="mobytic-cart-reassurance">
    <div class="row">

      {* Inside a container *}
      <div class="container">
        <div class="row elements">

          <div class="col-md-4 col-sm-12">
            <div><img src="../..{$urls.theme_assets}img/reassurances/livraison.svg"></div>
            <div>
              <span>Livraison à domicile ou en relais</span>
            </div>
          </div>

          <div class="col-md-4 col-sm-12">
            <div><img src="../..{$urls.theme_assets}img/reassurances/paiement_securise.svg"></div>
            <div>
              <span>Paiement 100% sécurisé en ligne </span>
            </div>
          </div>

          <div class="col-md-4 col-sm-12">
            <div><img src="../..{$urls.theme_assets}img/reassurances/emballages_sous_vide_et_protege.svg"></div>
            <div>
              <span>Emballage hermétique et protégé</span>
            </div>
          </div>

        </div>
      </div>

    </div>
  </div>



  {* Full screen *}
  <div class="container-fluid" id="mobytic-homepage-reassurance"
    style="background-image: url('../..{$urls.theme_assets}img/homepage/reassurance/PleinDVie-02Fevrier2022-38.jpg');">
    <div class="row">

      {* Inside a container *}
      <div class="container">
        <div class="row elements">

          <div class="col-md-4 col-sm-12">
            <div><img src="../..{$urls.theme_assets}img/homepage/reassurance/fabrique-en-france.svg"></div>
            <div>
              <span>Fabriqué en France</span>
              <p>Tous nos produits sont élaborés
                dans nos ateliers en Alsace</p>
            </div>
          </div>

          <div class="col-md-4 col-sm-12">
            <div><img src="../..{$urls.theme_assets}img/homepage/reassurance/fabrication-artisanale.svg"></div>
            <div>
              <span>Fabrication artisanale</span>
              <p>Tous nos produits sont fabriqués
                à la main</p>
            </div>
          </div>

          <div class="col-md-4 col-sm-12">
            <div><img src="../..{$urls.theme_assets}img/homepage/reassurance/logo-part.svg"></div>
            <div>
              <span>Produits 100% bio</span>
              <p>Tous nos produits sont 100% bio
                dans le respect du vivant</p>
            </div>
          </div>

        </div>
      </div>

    </div>
  </div>
{/block}