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

{block name='mobytic_homepage_fullwidth'}

  {* Full screen *}
  <div class="container-fluid">
    <div class="row">
      <div id="mobytic-homepage-banner">
        <div class="col-md-9 col-sm-12 client"
          style="background-image: url('../..{$urls.theme_assets}img/homepage/banner/PleinDVie-02Fevrier2022-23.webp');">

          {* Left *}
          <div class="row">
            <h1>{l s="Bienvenue sur Plein d'Vie" d='Homepage.Intro'}</h1>
            <p>{l s="Retrouvez toutes nos gammes de produits dans la boutique en ligne" d='Homepage.Intro'}</p>
            <a class="btn" href="{if Group::getCurrent()->id == 4}/5-professionnels{else}/8-boutique{/if}">{l s="La boutique en ligne" d='Homepage.Intro'}</a>
          </div>
        </div>

        {* Right *}
        <div class="col-md-3 col-sm-12 pro">
          <div class="row">
            <img src="../..{$urls.theme_assets}img/homepage/banner/plein-dvie-graine.svg" alt="icone Graine">
            <div><b>{l s="Vous êtes un professionnel ?" d='Homepage.Intro'}</b></div>
            <p class="text-center">{l s="Inscrivez-vous en tant que professionnel pour bénéficier de toutes les offres dédiées !" d='Homepage.Intro'}</p>
            <a class="btn" href="/connexion#login-form-professionnal?back={$urls.pages.my_account}">Espace Pro</a>
          </div>
        </div>
      </div>
    </div>
  </div>


  {* Inside a container *}
  <div class="container">
    <div class="row">

      <section id="mobytic-homepage-cards">

        <div class="card"
          style="background-image: url('../..{$urls.theme_assets}img/homepage/cards/PleinDVie-02Fevrier2022-14.webp');">
          <img src="../..{$urls.theme_assets}img/homepage/cards/logo-pleindvie.svg" alt="icone Graine">
          <div>
            <a href="
            {if Group::getCurrent()->id == 4}
              /6-green-gnola
            {else}
              /3-green-gnola
            {/if}
            ">
              <span>{l s="Les Green'gnola" d='Homepage.Cards'}</span>
          </a>
          <img src="../..{$urls.theme_assets}img/homepage/cards/cuillere-gauche.svg" alt="icone Graine">
        </div>
      </div>

      <div class="card"
        style="background-image: url('../..{$urls.theme_assets}img/homepage/cards/PleinDVie-18Fevrier2022-31.webp');">
        <img src="../..{$urls.theme_assets}img/homepage/cards/logo-pleindvie-graw-tugiato.svg" alt="icone Graine">
        <div>
              <a href="
            {if Group::getCurrent()->id == 4}
              /7-g-raw-tugiato
            {else}
              /4-g-raw-tugiato
            {/if}
            ">
              <span>{l s="Les G'raw Tugiato" d='Homepage.Cards'}</span>
            </a>
            <img src="../..{$urls.theme_assets}img/homepage/cards/cuillere-droite.svg" alt="icone Graine">
          </div>
        </div>

      </section>
    </div>

    {hook h='displayMobyticHomepageAfterCards'}

    {* {block name='hook_home'}
        {$HOOK_HOME nofilter}
      {/block} *}





  </div>


  {* Full screen *}
  <div class="container-fluid" id="mobytic-homepage-reassurance"
    style="background-image: url('../..{$urls.theme_assets}img/homepage/reassurance/PleinDVie-02Fevrier2022-38.webp');">
    <div class="row">

      {* Inside a container *}
      <div class="container">
        <div class="row elements">

          <div class="col-md-4 col-sm-12">
            <div><img src="../..{$urls.theme_assets}img/homepage/reassurance/fabrique-en-france.svg"></div>
            <div>
              <span>{l s='Fabriqué en France' d='Reassurance'}</span>
              <p>{l s='Tous nos produits sont élaborés dans nos ateliers en Alsace' d='Reassurance'}</p>
            </div>
          </div>

          <div class="col-md-4 col-sm-12">
            <div><img src="../..{$urls.theme_assets}img/homepage/reassurance/fabrication-artisanale.svg"></div>
            <div>
              <span>{l s='Fabrication artisanale' d='Reassurance'}</span>
              <p>{l s='Tous nos produits sont fabriqués à la main' d='Reassurance'}</p>
            </div>
          </div>

          <div class="col-md-4 col-sm-12">
            <div><img src="../..{$urls.theme_assets}img/homepage/reassurance/logo-part.svg"></div>
            <div>
              <span>{l s='Produits 100% bio' d='Reassurance'}</span>
              <p>{l s='Tous nos produits sont 100% bio dans le respect du vivant' d='Reassurance'}</p>
            </div>
          </div>

        </div>
      </div>

    </div>
  </div>



  <div id="mobytic-homepage-about" class="container">

    <div class="row">
      <div class="title mobytic-title">
        <img src="../..{$urls.theme_assets}img/global/logo-part.svg">
        <h2 class="h2 text-uppercase">
          {l s='Qui est Plein d\'Vie ?' d='Homepage.About'}
        </h2>
        <hr>
      </div>
    </div>

    <div class="row group">

      <div class="col-md-4 col-sm-12">
        <div class="img"
          style="background-image: url('../..{$urls.theme_assets}img/homepage/about/Plein DVie - Colmar - 40.webp');">
        </div>
      </div>

      <div class="col-md-8 col-sm-12 content">
        <div>
          <p>{$MB_THEME_SETTINGS_HOMEPAGE_ABOUT nofilter}</p>

          <img class="bg" src="../..{$urls.theme_assets}img/homepage/about/round.svg">
          <img src="../..{$urls.theme_assets}img/homepage/about/certificat-ab.svg">

          <a class="h4 btn" href="/content/4-a-propos">
            {l s='En savoir plus' d='Cta'}
          </a>
        </div>
      </div>

    </div>
  </div>


{/block}


{block name='content'}{/block}



{* {block name='page_content_container'}
  <section id="content" class="page-home">
    {block name='page_content_top'}{/block}

    {block name='page_content'}




      {hook h='displayMobyticHomepageAfterCards'}


      {block name='hook_home'}
        {$HOOK_HOME nofilter}
      {/block}
    {/block}
  </section>
{/block} *}