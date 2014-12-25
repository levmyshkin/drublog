<?php
/**
 * @file
 * drublog.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function drublog_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_views_api().
 */
function drublog_views_api() {
  return array("version" => "3.0");
}

/**
 * Implements hook_image_default_styles().
 */
function drublog_image_default_styles() {
  $styles = array();

  // Exported image style: 130x87crop.
  $styles['130x87crop'] = array(
    'name' => '130x87crop',
    'effects' => array(
      1 => array(
        'label' => 'Масштабировать и обрезать',
        'help' => '«Масштабирование и обрезка» сначала масштабирует изображение, а затем обрезает большее значение. Это наиболее эффективный способ создания миниатюр без искажения пропорций исходного изображения.',
        'effect callback' => 'image_scale_and_crop_effect',
        'dimensions callback' => 'image_resize_dimensions',
        'form callback' => 'image_resize_form',
        'summary theme' => 'image_resize_summary',
        'module' => 'image',
        'name' => 'image_scale_and_crop',
        'data' => array(
          'width' => '130',
          'height' => '87',
        ),
        'weight' => '1',
      ),
    ),
  );

  return $styles;
}

/**
 * Implements hook_node_info().
 */
function drublog_node_info() {
  $items = array(
    'article' => array(
      'name' => t('Статья'),
      'base' => 'node_content',
      'description' => t('Статьи не отображаются в блоге. В отличие от Страниц могут комментироваться.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
    'page' => array(
      'name' => t('Страница'),
      'base' => 'node_content',
      'description' => t('Обычные страницы сайта без комментариев, такие как "Об авторе".'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
    'photoalbum' => array(
      'name' => t('Фотоальбом'),
      'base' => 'node_content',
      'description' => t('Создайте этот материал, чтобы загрузить фотографии в фотогалерею.'),
      'has_title' => '1',
      'title_label' => t('Название альбома'),
      'help' => '',
    ),
    'webform' => array(
      'name' => t('Веб-форма'),
      'base' => 'node_content',
      'description' => t('Тип содержимого для создания веб-форм.'),
      'has_title' => '1',
      'title_label' => t('Заголовок'),
      'help' => '',
    ),
  );
  return $items;
}
