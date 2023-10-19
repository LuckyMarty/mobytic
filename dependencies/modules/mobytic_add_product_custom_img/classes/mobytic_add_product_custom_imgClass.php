<?php

/**
 * 2007-2022 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 *  @author    Mobytic <team@mobytic.com>
 *  @copyright 2022 Mobytic
 *  @license   see file: LICENSE.txt
 *  @category  PrestaShop
 *  @category  Module
 *  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 */

/**
 * Class ProductLabelLocation
 */
class Mobytic_add_product_custom_imgClass extends ObjectModel
{
    public $id_product;
    public $img_url;

    public static $cache = array();

    public static $definition = array(
        'table'   => 'mobytic_add_product_custom_img',
        'primary' => 'id_product',
        'fields'  => array(
            'id_product'    => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedId'),
            'img_url'       => array('type' => self::TYPE_STRING, 'validate' => 'isString'),
        ),
    );

    public function __construct($id_product = null)
    {
        parent::__construct($id_product);
    }
}
