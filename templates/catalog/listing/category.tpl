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
{extends file='catalog/listing/product-list.tpl'}

{block name='product_list_header'}
    {include file='catalog/_partials/category-header.tpl' listing=$listing category=$category}
{/block}

{block name='mobytic_product_fullwidth'}

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

{block name='product_list_footer'}
    {include file='catalog/_partials/category-footer.tpl' listing=$listing category=$category}
{/block}
