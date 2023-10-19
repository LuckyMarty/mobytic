{**
* Loulou66
* LpsProAccount module for Prestashop
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php*
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author Loulou66.fr <contact@loulou66.fr>
    * @copyright loulou66.fr
    * @license http://opensource.org/licenses/afl-3.0.php Academic Free License (AFL 3.0)
    *}

    <div id="mobytic-authentication" class="container">


        {* <div class="lpsproaccount-button">
            {if isset($displayParticuliarForm) && $displayParticuliarForm}
            <form id="login-form-particular" action="{$urlParticularRegister}" method="post">
                <button type="submit" id="button-form-particular" class="btn btn-primary">
                    {l s='Particular Account' mod='lpsproaccount'}
                </button>
            </form>
            {/if}
            <form id="login-form-professionnal" action="{$urlProfessionalRegister}" method="post">
                <button type="submit" id="button-form-professionnal" class="btn btn-primary">
                    {l s='Professionnal Account' mod='lpsproaccount'}
                </button>
            </form>
        </div> *}

        <div class="create_account">

            <div class="h4">
                {l s='No account? Create one here' mod='lpsproaccount'}
            </div>

            {if isset($displayParticuliarForm) && $displayParticuliarForm}
            <div class="col-xl-6 create_account-client" style="background-image: url('../..{$urls.theme_assets}img/authentication/creer_un_compte_particulier_plein_d_vie.png');">

                <div class="content">
                    <ul>
                        <li>Surprenez vos convives</li>
                        <li>Agrémentez de super aliments</li>
                        <li>Variez les plaisirs régulièrements</li>
                    </ul>

                    <form id="login-form-particular" action="{$urlParticularRegister}" method="post">
                        <button type="submit" id="button-form-particular" class="btn btn-primary">
                            {l s='Particular Account' mod='lpsproaccount'}
                        </button>
                    </form>
                </div>
                
                <!-- <img src="../..{$urls.theme_assets}img/authentication/creer_un_compte_particulier_plein_d_vie.png"
                    alt="icone Graine"> -->
            </div>
            {/if}

            <div class="col-xl-6 create_account-pro" style="background-image: url('../..{$urls.theme_assets}img/authentication/creer_un_compte_pro_plein_d_vie.png');">

                <div class="content">

                    <ul>
                        <li>Un tarif avantageux au volume</li>
                        <li>Des plats uniques et bons pour vos clients</li>
                        <li>Un service dédié aux professionnels de la restauration</li>
                    </ul>

                    <form id="login-form-professionnal" action="{$urlProfessionalRegister}" method="post">
                        <button type="submit" id="button-form-professionnal" class="btn btn-primary">
                            {l s='Professionnal Account' mod='lpsproaccount'}
                        </button>
                    </form>
                </div>

                <!-- <img src="../..{$urls.theme_assets}img/authentication/creer_un_compte_pro_plein_d_vie.png"
                    alt="icone Graine"> -->
            </div>

        </div>
    </div>