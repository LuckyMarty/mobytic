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
{extends file='page.tpl'}
{if $cms.id == 4}
{else}
  {block name='page_title'}
    {$cms.meta_title}
  {/block}
{/if}

{block name='page_content_container'}
  {if $cms.id == 4}
    <div id="mobytic-homepage-about" class="container">

      <div class="row">
        <div class="title mobytic-title">
          <img src="../..{$urls.theme_assets}img/global/logo-part.svg">
          <h2 class="h2 text-uppercase">
            {l s='Les graines Plein d\'Vie' d='Shop.Theme.Catalog'}
          </h2>
          <hr>
        </div>
      </div>

      <div class="row group">

        <div class="col-md-4 col-sm-12">
          <div class="img"
            style="background-image: url('../..{$urls.theme_assets}img/homepage/about/Plein DVie - Colmar - 40.jpg');">
          </div>
        </div>

        <div class="col-md-8 col-sm-12 content">
          <div>
            <p>L’entreprise Plein D’Vie est une entreprise artisanale basée à Kembs dans le Haut Rhin au sud de l’Alsace à la frontière avec l’Allemagne et la Suisse.
            <br>
            Elle est née d’une passion ; celle de Sébastien pour l’alimentation vivante, le bien-être, la santé, le partage et le mieux vivre.
            <br>
            Cuisinier de formation Sébastien, a toujours été animé par le plaisir de faire s’émerveiller les papilles de celles et ceux qui goutaient ses plats, il a longtemps cheminé dans la cuisine traditionnelle mais sa curiosité l’a amené à s’intéresser à de nouveaux modes de consommer et de cuisiner ; moins transformé, plus naturel, plus sain et plus vivant.
            <br>
            Au cours de son cheminement, il a fait connaissance avec les graines germées, source incroyable de protéines végétales de macro et micro nutriments.
            <br>
            Et c’est tout naturellement qu’il a voulu utiliser ses connaissances acquises pour créer les Green’Gnola.
            <br>
            Des valeurs qui tiennent en peu de mots : biologique, végétal, cru, respect du vivant, sain, développement solidaire et collaboratif.
            <br>
            Il y a de tout cela dans les graines de Plein d’Vie et bien plus encore…</p>

            <img class="bg" src="../..{$urls.theme_assets}img/homepage/about/round.svg">
            <img src="../..{$urls.theme_assets}img/homepage/about/certificat-ab.svg">

          </div>
        </div>

      </div>
    </div>

    <section id="content" class="page-content page-cms page-cms-{$cms.id}">

      {block name='cms_content'}
        {$cms.content nofilter}
      {/block}

      {block name='hook_cms_dispute_information'}
        {hook h='displayCMSDisputeInformation'}
      {/block}

      {block name='hook_cms_print_button'}
        {hook h='displayCMSPrintButton'}
      {/block}
    </section>
  {else}
    <section id="content" class="page-content page-cms page-cms-{$cms.id}">

      {block name='cms_content'}
        {$cms.content nofilter}
      {/block}

      {block name='hook_cms_dispute_information'}
        {hook h='displayCMSDisputeInformation'}
      {/block}

      {block name='hook_cms_print_button'}
        {hook h='displayCMSPrintButton'}
      {/block}
    </section>
  {/if}
{/block}