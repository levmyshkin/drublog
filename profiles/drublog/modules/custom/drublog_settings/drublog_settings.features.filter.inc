<?php
/**
 * @file
 * drublog_settings.features.filter.inc
 */

/**
 * Implements hook_filter_default_formats().
 */
function drublog_settings_filter_default_formats() {
  $formats = array();

  // Exported format: Визуальный редактор.
  $formats['filtered_html'] = array(
    'format' => 'filtered_html',
    'name' => 'Визуальный редактор',
    'cache' => '1',
    'status' => '1',
    'weight' => '-9',
    'filters' => array(
      'filter_url' => array(
        'weight' => '-50',
        'status' => '1',
        'settings' => array(
          'filter_url_length' => '72',
        ),
      ),
      'ext_link_page' => array(
        'weight' => '-49',
        'status' => '1',
        'settings' => array(),
      ),
      'filter_html' => array(
        'weight' => '-48',
        'status' => '1',
        'settings' => array(
          'allowed_html' => '<a> <em> <strong> <cite> <blockquote> <code> <ul> <ol> <li> <dl> <dt> <dd>',
          'filter_html_help' => 1,
          'filter_html_nofollow' => 0,
        ),
      ),
      'filter_autop' => array(
        'weight' => '-47',
        'status' => '1',
        'settings' => array(),
      ),
      'filter_htmlcorrector' => array(
        'weight' => '-45',
        'status' => '1',
        'settings' => array(),
      ),
    ),
  );

  // Exported format: full HTML.
  $formats['full_html'] = array(
    'format' => 'full_html',
    'name' => 'full HTML',
    'cache' => '1',
    'status' => '1',
    'weight' => '-10',
    'filters' => array(
      'filter_url' => array(
        'weight' => '-50',
        'status' => '1',
        'settings' => array(
          'filter_url_length' => '72',
        ),
      ),
      'ext_link_page' => array(
        'weight' => '-49',
        'status' => '1',
        'settings' => array(),
      ),
      'filter_autop' => array(
        'weight' => '-48',
        'status' => '1',
        'settings' => array(),
      ),
      'filter_htmlcorrector' => array(
        'weight' => '-45',
        'status' => '1',
        'settings' => array(),
      ),
    ),
  );

  // Exported format: Только текст.
  $formats['plain_text'] = array(
    'format' => 'plain_text',
    'name' => 'Только текст',
    'cache' => '1',
    'status' => '1',
    'weight' => '-8',
    'filters' => array(
      'filter_html_escape' => array(
        'weight' => '0',
        'status' => '1',
        'settings' => array(),
      ),
      'filter_url' => array(
        'weight' => '1',
        'status' => '1',
        'settings' => array(
          'filter_url_length' => '72',
        ),
      ),
      'filter_autop' => array(
        'weight' => '2',
        'status' => '1',
        'settings' => array(),
      ),
    ),
  );

  return $formats;
}
