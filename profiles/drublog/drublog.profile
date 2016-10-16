<?php

function drublog_install_tasks($install_state) {
  //print_r($install_state);
  $tasks['change_language'] = array(
    'display_name' => st('Setup 1'),
    'display' => TRUE,
    'type' => 'batch',
    'run' => INSTALL_TASK_RUN_IF_NOT_COMPLETED,
    'function' => 'drublog_change_default_language',
  );
  $tasks['post_install_1'] = array(
    'display_name' => st('Setup 2'),
    'display' => TRUE,
    'type' => 'batch',
    'run' => INSTALL_TASK_RUN_IF_NOT_COMPLETED,
    'function' => 'drublog_post_install_1',
  );
  return $tasks;
}

function drublog_change_default_language() {
  db_insert('node')
    ->fields(array(
      'nid' => 1,
      'vid' => 1,
      'type' => 'page',
      'language' => 'ru',
      'title' => 'Ошибка 404',
      'uid' => 1,
      'status' => 1,
      'created' => time(),
      'changed' => time(),
      'comment' => 1,
      'promote' => 0,
      'sticky' => 0,
      'tnid' => 0,
      'translate' => 0,
    ))
    ->execute();

  db_insert('node')
    ->fields(array(
      'nid' => 2,
      'vid' => 2,
      'type' => 'page',
      'language' => 'ru',
      'title' => 'Ошибка 403',
      'uid' => 1,
      'status' => 1,
      'created' => time(),
      'changed' => time(),
      'comment' => 1,
      'promote' => 0,
      'sticky' => 0,
      'tnid' => 0,
      'translate' => 0,
    ))
    ->execute();

  db_insert('node')
    ->fields(array(
      'nid' => 3,
      'vid' => 3,
      'type' => 'blog',
      'language' => 'ru',
      'title' => 'Моя первая запись в блоге',
      'uid' => 1,
      'status' => 1,
      'created' => time(),
      'changed' => time(),
      'comment' => 2,
      'promote' => 1,
      'sticky' => 0,
      'tnid' => 0,
      'translate' => 0,
    ))
    ->execute();

  db_insert('node')
    ->fields(array(
      'nid' => 4,
      'vid' => 4,
      'type' => 'page',
      'language' => 'ru',
      'title' => 'Об авторе',
      'uid' => 1,
      'status' => 1,
      'created' => time(),
      'changed' => time(),
      'comment' => 1,
      'promote' => 0,
      'sticky' => 0,
      'tnid' => 0,
      'translate' => 0,
    ))
    ->execute();

  db_insert('node')
    ->fields(array(
      'nid' => 5,
      'vid' => 5,
      'type' => 'photoalbum',
      'language' => 'ru',
      'title' => 'Отдых дело нужное',
      'uid' => 1,
      'status' => 1,
      'created' => time(),
      'changed' => time(),
      'comment' => 2,
      'promote' => 1,
      'sticky' => 0,
      'tnid' => 0,
      'translate' => 0,
    ))
    ->execute();

  db_insert('node')
    ->fields(array(
      'nid' => 6,
      'vid' => 6,
      'type' => 'blog',
      'language' => 'ru',
      'title' => 'Кто такой Drupal?',
      'uid' => 1,
      'status' => 1,
      'created' => time(),
      'changed' => time(),
      'comment' => 2,
      'promote' => 1,
      'sticky' => 0,
      'tnid' => 0,
      'translate' => 0,
    ))
    ->execute();

  db_insert('node_revision')
    ->fields(array(
      'nid' => 1,
      'vid' => 1,
      'uid' => 1,
      'title' => 'Ошибка 404',
      'log' => '',
      'timestamp' => time(),
      'status' => 1,
      'comment' => 1,
      'promote' => 0,
      'sticky' => 0,
    ))
    ->execute();

  db_insert('node_revision')
    ->fields(array(
      'nid' => 2,
      'vid' => 2,
      'uid' => 1,
      'title' => 'Ошибка 403',
      'log' => '',
      'timestamp' => time(),
      'status' => 1,
      'comment' => 1,
      'promote' => 0,
      'sticky' => 0,
    ))
    ->execute();

  db_insert('node_revision')
    ->fields(array(
      'nid' => 3,
      'vid' => 3,
      'uid' => 1,
      'title' => 'Моя первая запись в блоге',
      'log' => '',
      'timestamp' => time(),
      'status' => 1,
      'comment' => 2,
      'promote' => 1,
      'sticky' => 0,
    ))
    ->execute();

  db_insert('node_revision')
    ->fields(array(
      'nid' => 4,
      'vid' => 4,
      'uid' => 1,
      'title' => 'Об авторе',
      'log' => '',
      'timestamp' => time(),
      'status' => 1,
      'comment' => 1,
      'promote' => 0,
      'sticky' => 0,
    ))
    ->execute();

  db_insert('node_revision')
    ->fields(array(
      'nid' => 5,
      'vid' => 5,
      'uid' => 1,
      'title' => 'Отдых дело нужное',
      'log' => '',
      'timestamp' => time(),
      'status' => 1,
      'comment' => 2,
      'promote' => 1,
      'sticky' => 0,
    ))
    ->execute();

  db_insert('node_revision')
    ->fields(array(
      'nid' => 6,
      'vid' => 6,
      'uid' => 1,
      'title' => 'Кто такой Drupal?',
      'log' => '',
      'timestamp' => time(),
      'status' => 1,
      'comment' => 2,
      'promote' => 1,
      'sticky' => 0,
    ))
    ->execute();

  db_insert('cctags')
    ->fields(array(
      'cctid' => 1,
      'name' => 'tags',
      'block' => 1,
      'block_name' => 'Теги',
      'page' => 0,
      'page_title' => '',
      'page_path' => '',
      'page_level' => 5,
      'page_amount' => 0,
      'page_sort' => 'title,asc',
      'page_mode' => 'mixed',
      'page_vocname' => 0,
      'page_extra_class' => '',
      'item_data' => 'a:2:{s:4:"vocs";a:1:{i:1;i:1;}s:5:"level";a:1:{i:1;a:1:{i:0;i:1;}}}',
    ))
    ->execute();

  db_insert('field_data_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'page',
      'deleted' => 0,
      'entity_id' => 1,
      'revision_id' => 1,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Страница не найдена</p><p><a href="/">Вернуться на главную</a></p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_data_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'page',
      'deleted' => 0,
      'entity_id' => 2,
      'revision_id' => 2,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Отказано в доступе</p><p><a href="/">Вернуться на главную</a></p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_data_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Ура, это моя первая запись в блоге</p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_data_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'page',
      'deleted' => 0,
      'entity_id' => 4,
      'revision_id' => 4,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Разместите здесь информацию о себе.</p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_data_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Некоторые фотографии с поездки в Крым.</p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_data_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Drupal (друпал)&nbsp; — система управления содержимым (CMS), написанная на языке PHP и использующая в качестве хранилища данных реляционную базу данных (поддерживаются MySQL, PostgreSQL и другие). Drupal является свободным программным обеспечением, защищённым лицензией GPL, и развивается усилиями энтузиастов со всего мира.</p><p>История проекта</p><p>Начал разработку в 2000 году бельгиец Дрис Бёйтарт (Dries Buytaert), который и поныне является руководителем проекта. Название drupal является искажённым произношением голландского слова druppel (капля) и появилось в результате забавной ошибки. В 2000 году несколько студентов антверпенского университета использовали общий ADSL-модем для доступа в интернет, и для общения пользователей этой маленькой локальной сети Дрис создал внутренний сайт. Программа, на которой работал сайт, не имела имени, пока Дрис не собрался регистрировать доменное имя для нового сайта, и в результате опечатки вместо dorp.org (от голландского dorp — деревня, вполне уместное имя для небольшого сообщества) был зарегистрирован drop.org (англ. drop — капля). Аудитория нового сайта со временем сменилась на интересующихся развитием новых веб-технологий, и новый сайт постепенно перешёл из любительского эксперимента в проект по обсуждениям идей веб-программирования. В 2001 году Дрис опубликовал исходный код drop.org под именем «Drupal». С тех пор разработка переместилась на зарегистрированный позднее сайт drupal.org, который приобрёл статус официального сайта проекта.</p><p>Со времени создания в процесс разработки были вовлечены сотни людей. Официальные разработчики ядра сейчас — это десятки человек, но много людей присылают свои патчи, включаемые в код системы. Также функциональность движка расширяется дополнительными модулями, которые создают сторонние разработчики. Например, в релизе 4.6 приняли участие 50 человек, приславших 338 поправок к коду, а в релизе 4.7 приняли участие уже 338 разработчиков, приславших примерно 1500 поправок. За пять лет существования проекта (к 2006 году) вышло 13 релизов. На данный момент (январь 2011) было разработано более 7000 дополнительных модулей, расширяющих базовые функции CMS. По статистике обращения к обновлениям движка на март 2009 года в интернете в пределах 120 тыс. активных сайтов на Drupal 6 (без учёта сайтов находящихся за файрволлами, сайтов с отключённым механизмом обновлений). Это также не учитывает сайтов работающих на ранних версиях Drupal.</p><p>В 2007 году Дрис Байтаерт создал фирму Acquia, направленную на коммерческую поддержку проектов и сервисов, основанных на Drupal, вдохновленный успехами Canonical и RedHat, построивших бизнес на поддержке открытых проектов. В 2008 Байтаерт получил учёную степень доктора философии по информатике при университете Гента.</p><p>Со временем вокруг международного сайта появились национальные сообщества. Сейчас работают более 20 национальных сайтов поддержки на разных языках,[5] включая русскоязычное сообщество drupal.ru, основанное в 2003 году.</p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();


  db_insert('field_data_field_image')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 0,
      'field_image_fid' => 3,
      'field_image_alt' => '',
      'field_image_title' => '',
      'field_image_width' => 248,
      'field_image_height' => 203,
    ))
    ->execute();

  db_insert('field_data_field_image')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'page',
      'deleted' => 0,
      'entity_id' => 4,
      'revision_id' => 4,
      'language' => 'und',
      'delta' => 0,
      'field_image_fid' => 4,
      'field_image_alt' => 'Это я',
      'field_image_title' => 'Это я',
      'field_image_width' => 2284,
      'field_image_height' => 2448,
    ))
    ->execute();

  db_insert('field_data_field_image')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      'field_image_fid' => 9,
      'field_image_alt' => '',
      'field_image_title' => '',
      'field_image_width' => 349,
      'field_image_height' => 400,
    ))
    ->execute();


  db_insert('field_data_field_photos')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 0,
      'field_photos_fid' => 5,
      'field_photos_alt' => 'Закат',
      'field_photos_title' => 'Закат',
      'field_photos_width' => 3264,
      'field_photos_height' => 2448,
    ))
    ->execute();

  db_insert('field_data_field_photos')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 1,
      'field_photos_fid' => 6,
      'field_photos_alt' => 'Город сверху',
      'field_photos_title' => 'Город сверху',
      'field_photos_width' => 3264,
      'field_photos_height' => 2448,
    ))
    ->execute();

  db_insert('field_data_field_photos')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 2,
      'field_photos_fid' => 7,
      'field_photos_alt' => 'Пляж',
      'field_photos_title' => 'Пляж',
      'field_photos_width' => 3264,
      'field_photos_height' => 2448,
    ))
    ->execute();

  db_insert('field_data_field_photos')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 3,
      'field_photos_fid' => 8,
      'field_photos_alt' => 'Балаклава',
      'field_photos_title' => 'Балаклава',
      'field_photos_width' => 3264,
      'field_photos_height' => 2448,
    ))
    ->execute();


  db_insert('field_data_field_tags')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 0,
      'field_tags_tid' => 1,
    ))
    ->execute();

  db_insert('field_data_field_tags')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 1,
      'field_tags_tid' => 2,
    ))
    ->execute();

  db_insert('field_data_field_tags')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 2,
      'field_tags_tid' => 3,
    ))
    ->execute();

  db_insert('field_data_field_tags')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      'field_tags_tid' => 3,
    ))
    ->execute();

  db_insert('field_data_meta_description')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      'meta_description_metatags_quick' => 'Статья о том что такое Друпал.',
    ))
    ->execute();

  db_insert('field_data_meta_keywords')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      '	meta_keywords_metatags_quick' => 'Друпал',
    ))
    ->execute();

  db_insert('field_revision_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'page',
      'deleted' => 0,
      'entity_id' => 1,
      'revision_id' => 1,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Страница не найдена</p><p><a href="/">Вернуться на главную</a></p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_revision_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'page',
      'deleted' => 0,
      'entity_id' => 2,
      'revision_id' => 2,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Отказано в доступе</p><p><a href="/">Вернуться на главную</a></p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_revision_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 0,
      'body_value' => 'Ура, это моя первая запись в блоге',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_revision_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'page',
      'deleted' => 0,
      'entity_id' => 4,
      'revision_id' => 4,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Разместите здесь информацию о себе.</p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_revision_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Некоторые фотографии с поездки в Крым.</p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_revision_body')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      'body_value' => '<p>Drupal (друпал)&nbsp; — система управления содержимым (CMS), написанная на языке PHP и использующая в качестве хранилища данных реляционную базу данных (поддерживаются MySQL, PostgreSQL и другие). Drupal является свободным программным обеспечением, защищённым лицензией GPL, и развивается усилиями энтузиастов со всего мира.</p><p>История проекта</p><p>Начал разработку в 2000 году бельгиец Дрис Бёйтарт (Dries Buytaert), который и поныне является руководителем проекта. Название drupal является искажённым произношением голландского слова druppel (капля) и появилось в результате забавной ошибки. В 2000 году несколько студентов антверпенского университета использовали общий ADSL-модем для доступа в интернет, и для общения пользователей этой маленькой локальной сети Дрис создал внутренний сайт. Программа, на которой работал сайт, не имела имени, пока Дрис не собрался регистрировать доменное имя для нового сайта, и в результате опечатки вместо dorp.org (от голландского dorp — деревня, вполне уместное имя для небольшого сообщества) был зарегистрирован drop.org (англ. drop — капля). Аудитория нового сайта со временем сменилась на интересующихся развитием новых веб-технологий, и новый сайт постепенно перешёл из любительского эксперимента в проект по обсуждениям идей веб-программирования. В 2001 году Дрис опубликовал исходный код drop.org под именем «Drupal». С тех пор разработка переместилась на зарегистрированный позднее сайт drupal.org, который приобрёл статус официального сайта проекта.</p><p>Со времени создания в процесс разработки были вовлечены сотни людей. Официальные разработчики ядра сейчас — это десятки человек, но много людей присылают свои патчи, включаемые в код системы. Также функциональность движка расширяется дополнительными модулями, которые создают сторонние разработчики. Например, в релизе 4.6 приняли участие 50 человек, приславших 338 поправок к коду, а в релизе 4.7 приняли участие уже 338 разработчиков, приславших примерно 1500 поправок. За пять лет существования проекта (к 2006 году) вышло 13 релизов. На данный момент (январь 2011) было разработано более 7000 дополнительных модулей, расширяющих базовые функции CMS. По статистике обращения к обновлениям движка на март 2009 года в интернете в пределах 120 тыс. активных сайтов на Drupal 6 (без учёта сайтов находящихся за файрволлами, сайтов с отключённым механизмом обновлений). Это также не учитывает сайтов работающих на ранних версиях Drupal.</p><p>В 2007 году Дрис Байтаерт создал фирму Acquia, направленную на коммерческую поддержку проектов и сервисов, основанных на Drupal, вдохновленный успехами Canonical и RedHat, построивших бизнес на поддержке открытых проектов. В 2008 Байтаерт получил учёную степень доктора философии по информатике при университете Гента.</p><p>Со временем вокруг международного сайта появились национальные сообщества. Сейчас работают более 20 национальных сайтов поддержки на разных языках,[5] включая русскоязычное сообщество drupal.ru, основанное в 2003 году.</p>',
      'body_summary' => '',
      'body_format' => 'full_html',
    ))
    ->execute();

  db_insert('field_revision_field_image')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 0,
      'field_image_fid' => 3,
      'field_image_alt' => '',
      'field_image_title' => '',
      'field_image_width' => 248,
      'field_image_height' => 203,
    ))
    ->execute();

  db_insert('field_revision_field_image')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'page',
      'deleted' => 0,
      'entity_id' => 4,
      'revision_id' => 4,
      'language' => 'und',
      'delta' => 0,
      'field_image_fid' => 4,
      'field_image_alt' => 'Это я',
      'field_image_title' => 'Это я',
      'field_image_width' => 2284,
      'field_image_height' => 2448,
    ))
    ->execute();

  db_insert('field_revision_field_image')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      'field_image_fid' => 9,
      'field_image_alt' => '',
      'field_image_title' => '',
      'field_image_width' => 349,
      'field_image_height' => 400,
    ))
    ->execute();

  db_insert('field_revision_field_tags')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 0,
      'field_tags_tid' => 1,
    ))
    ->execute();

  db_insert('field_revision_field_tags')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 1,
      'field_tags_tid' => 2,
    ))
    ->execute();

  db_insert('field_revision_field_tags')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 3,
      'revision_id' => 3,
      'language' => 'und',
      'delta' => 2,
      'field_tags_tid' => 3,
    ))
    ->execute();

  db_insert('field_revision_field_tags')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      'field_tags_tid' => 3,
    ))
    ->execute();


  db_insert('metatags_quick_path_based')
    ->fields(array(
      'id' => 1,
      'path' => 'blog',
      'lang' => 'ru',
    ))
    ->execute();

  db_insert('metatags_quick_path_based')
    ->fields(array(
      'id' => 2,
      'path' => 'contact',
      'lang' => 'ru',
    ))
    ->execute();


  db_insert('wysiwyg')
    ->fields(array(
      'format' => 'filtered_html',
      'editor' => 'tinymce',
      'settings' => 'a:20:{s:7:"default";i:1;s:11:"user_choose";i:0;s:11:"show_toggle";i:1;s:5:"theme";s:8:"advanced";s:8:"language";s:2:"ru";s:7:"buttons";a:1:{s:7:"default";a:17:{s:4:"bold";i:1;s:6:"italic";i:1;s:9:"underline";i:1;s:13:"strikethrough";i:1;s:11:"justifyleft";i:1;s:13:"justifycenter";i:1;s:12:"justifyright";i:1;s:11:"justifyfull";i:1;s:7:"bullist";i:1;s:7:"numlist";i:1;s:7:"outdent";i:1;s:6:"indent";i:1;s:4:"undo";i:1;s:4:"redo";i:1;s:4:"link";i:1;s:6:"unlink";i:1;s:5:"image";i:1;}}s:11:"toolbar_loc";s:3:"top";s:13:"toolbar_align";s:4:"left";s:8:"path_loc";s:6:"bottom";s:8:"resizing";i:1;s:11:"verify_html";i:1;s:12:"preformatted";i:0;s:22:"convert_fonts_to_spans";i:1;s:17:"remove_linebreaks";i:1;s:23:"apply_source_formatting";i:0;s:27:"paste_auto_cleanup_on_paste";i:0;s:13:"block_formats";s:32:"p,address,pre,h2,h3,h4,h5,h6,div";s:11:"css_setting";s:5:"theme";s:8:"css_path";s:0:"";s:11:"css_classes";s:0:"";}',
    ))
    ->execute();

  db_insert('wysiwyg')
    ->fields(array(
      'format' => 'full_html',
      'editor' => 'tinymce',
      'settings' => 'a:20:{s:7:"default";i:1;s:11:"user_choose";i:0;s:11:"show_toggle";i:1;s:5:"theme";s:8:"advanced";s:8:"language";s:2:"ru";s:7:"buttons";a:24:{s:7:"default";a:30:{s:4:"bold";i:1;s:6:"italic";i:1;s:9:"underline";i:1;s:13:"strikethrough";i:1;s:11:"justifyleft";i:1;s:13:"justifycenter";i:1;s:12:"justifyright";i:1;s:11:"justifyfull";i:1;s:7:"bullist";i:1;s:7:"numlist";i:1;s:7:"outdent";i:1;s:6:"indent";i:1;s:4:"undo";i:1;s:4:"redo";i:1;s:4:"link";i:1;s:6:"unlink";i:1;s:6:"anchor";i:1;s:5:"image";i:1;s:7:"cleanup";i:1;s:9:"forecolor";i:1;s:9:"backcolor";i:1;s:3:"sup";i:1;s:3:"sub";i:1;s:10:"blockquote";i:1;s:4:"code";i:1;s:2:"hr";i:1;s:3:"cut";i:1;s:4:"copy";i:1;s:5:"paste";i:1;s:7:"charmap";i:1;}s:5:"advhr";a:1:{s:5:"advhr";i:1;}s:8:"advimage";a:1:{s:8:"advimage";i:1;}s:7:"advlink";a:1:{s:7:"advlink";i:1;}s:8:"autosave";a:1:{s:8:"autosave";i:1;}s:11:"contextmenu";a:1:{s:11:"contextmenu";i:1;}s:14:"directionality";a:2:{s:3:"ltr";i:1;s:3:"rtl";i:1;}s:8:"emotions";a:1:{s:8:"emotions";i:1;}s:4:"font";a:4:{s:12:"formatselect";i:1;s:10:"fontselect";i:1;s:14:"fontsizeselect";i:1;s:11:"styleselect";i:1;}s:10:"fullscreen";a:1:{s:10:"fullscreen";i:1;}s:12:"inlinepopups";a:1:{s:12:"inlinepopups";i:1;}s:14:"insertdatetime";a:1:{s:10:"insertdate";i:1;}s:5:"layer";a:4:{s:11:"insertlayer";i:1;s:11:"moveforward";i:1;s:12:"movebackward";i:1;s:8:"absolute";i:1;}s:5:"paste";a:3:{s:9:"pastetext";i:1;s:9:"pasteword";i:1;s:9:"selectall";i:1;}s:7:"preview";a:1:{s:7:"preview";i:1;}s:5:"print";a:1:{s:5:"print";i:1;}s:13:"searchreplace";a:2:{s:6:"search";i:1;s:7:"replace";i:1;}s:5:"style";a:1:{s:10:"styleprops";i:1;}s:5:"table";a:1:{s:13:"tablecontrols";i:1;}s:5:"media";a:1:{s:5:"media";i:1;}s:10:"xhtmlxtras";a:6:{s:4:"cite";i:1;s:3:"del";i:1;s:4:"abbr";i:1;s:7:"acronym";i:1;s:3:"ins";i:1;s:7:"attribs";i:1;}s:10:"autoresize";a:1:{s:10:"autoresize";i:1;}s:7:"advlist";a:1:{s:7:"advlist";i:1;}s:4:"imce";a:1:{s:4:"imce";i:1;}}s:11:"toolbar_loc";s:3:"top";s:13:"toolbar_align";s:4:"left";s:8:"path_loc";s:6:"bottom";s:8:"resizing";i:1;s:11:"verify_html";i:1;s:12:"preformatted";i:0;s:22:"convert_fonts_to_spans";i:1;s:17:"remove_linebreaks";i:1;s:23:"apply_source_formatting";i:0;s:27:"paste_auto_cleanup_on_paste";i:0;s:13:"block_formats";s:32:"p,address,pre,h2,h3,h4,h5,h6,div";s:11:"css_setting";s:5:"theme";s:8:"css_path";s:0:"";s:11:"css_classes";s:0:"";}',
    ))
    ->execute();

  db_insert('wysiwyg')
    ->fields(array(
      'format' => 'plain_text',
      'editor' => '',
      'settings' => NULL
    ))
    ->execute();

  db_insert('node_comment_statistics')
    ->fields(array(
      'nid' => 1,
      'cid' => 0,
      'last_comment_timestamp' => time(),
      'last_comment_name' => NULL,
      'last_comment_uid' => 1,
      'comment_count' => 0,
    ))
    ->execute();

  db_insert('node_comment_statistics')
    ->fields(array(
      'nid' => 2,
      'cid' => 0,
      'last_comment_timestamp' => time(),
      'last_comment_name' => NULL,
      'last_comment_uid' => 1,
      'comment_count' => 0,
    ))
    ->execute();

  db_insert('node_comment_statistics')
    ->fields(array(
      'nid' => 3,
      'cid' => 0,
      'last_comment_timestamp' => time(),
      'last_comment_name' => NULL,
      'last_comment_uid' => 1,
      'comment_count' => 0,
    ))
    ->execute();

  db_insert('node_comment_statistics')
    ->fields(array(
      'nid' => 4,
      'cid' => 0,
      'last_comment_timestamp' => time(),
      'last_comment_name' => NULL,
      'last_comment_uid' => 1,
      'comment_count' => 0,
    ))
    ->execute();

  db_insert('node_comment_statistics')
    ->fields(array(
      'nid' => 5,
      'cid' => 0,
      'last_comment_timestamp' => time(),
      'last_comment_name' => NULL,
      'last_comment_uid' => 1,
      'comment_count' => 0,
    ))
    ->execute();

  db_insert('node_comment_statistics')
    ->fields(array(
      'nid' => 6,
      'cid' => 0,
      'last_comment_timestamp' => time(),
      'last_comment_name' => NULL,
      'last_comment_uid' => 1,
      'comment_count' => 0,
    ))
    ->execute();

  db_insert('field_revision_field_photos')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 0,
      'field_photos_fid' => 5,
      'field_photos_alt' => 'Закат',
      'field_photos_title' => 'Закат',
      'field_photos_width' => 3264,
      'field_photos_height' => 2448,
    ))
    ->execute();

  db_insert('field_revision_field_photos')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 1,
      'field_photos_fid' => 6,
      'field_photos_alt' => 'Город сверху',
      'field_photos_title' => 'Город сверху',
      'field_photos_width' => 3264,
      'field_photos_height' => 2448,
    ))
    ->execute();

  db_insert('field_revision_field_photos')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 2,
      'field_photos_fid' => 7,
      'field_photos_alt' => 'Пляж',
      'field_photos_title' => 'Пляж',
      'field_photos_width' => 3264,
      'field_photos_height' => 2448,
    ))
    ->execute();


  db_insert('field_revision_field_photos')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'photoalbum',
      'deleted' => 0,
      'entity_id' => 5,
      'revision_id' => 5,
      'language' => 'und',
      'delta' => 3,
      'field_photos_fid' => 8,
      'field_photos_alt' => 'Балаклава',
      'field_photos_title' => 'Балаклава',
      'field_photos_width' => 3264,
      'field_photos_height' => 2448,
    ))
    ->execute();

  db_insert('field_revision_meta_description')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      'meta_description_metatags_quick' => 'Статья о том что такое Друпал.',
    ))
    ->execute();

  db_insert('field_revision_meta_keywords')
    ->fields(array(
      'entity_type' => 'node',
      'bundle' => 'blog',
      'deleted' => 0,
      'entity_id' => 6,
      'revision_id' => 6,
      'language' => 'und',
      'delta' => 0,
      'meta_keywords_metatags_quick' => 'Друпал',
    ))
    ->execute();

  db_insert('file_managed')
    ->fields(array(
      'fid' => 2,
      'uid' => 1,
      'filename' => 'browse-title-bg-inactive.jpg',
      'uri' => 'public://browse-title-bg-inactive.jpg',
      'filemime' => 'image/jpeg',
      'filesize' => 13322,
      'status' => 1,
      'timestamp' => time(),
    ))
    ->execute();

  db_insert('file_managed')
    ->fields(array(
      'fid' => 3,
      'uid' => 1,
      'filename' => 'index.jpg',
      'uri' => 'public://index.jpg',
      'filemime' => 'image/jpeg',
      'filesize' => 5454,
      'status' => 1,
      'timestamp' => time(),
    ))
    ->execute();

  db_insert('file_managed')
    ->fields(array(
      'fid' => 4,
      'uid' => 1,
      'filename' => 'img_4793.jpg',
      'uri' => 'public://img_4793.jpg',
      'filemime' => 'image/jpeg',
      'filesize' => 3848724,
      'status' => 1,
      'timestamp' => time(),
    ))
    ->execute();

  db_insert('file_managed')
    ->fields(array(
      'fid' => 5,
      'uid' => 1,
      'filename' => 'img_5507.jpg',
      'uri' => 'public://img_5507.jpg',
      'filemime' => 'image/jpeg',
      'filesize' => 3294541,
      'status' => 1,
      'timestamp' => time(),
    ))
    ->execute();

  db_insert('file_managed')
    ->fields(array(
      'fid' => 6,
      'uid' => 1,
      'filename' => 'img_5961.jpg',
      'uri' => 'public://img_5961.jpg',
      'filemime' => 'image/jpeg',
      'filesize' => 4381090,
      'status' => 1,
      'timestamp' => time(),
    ))
    ->execute();

  db_insert('file_managed')
    ->fields(array(
      'fid' => 7,
      'uid' => 1,
      'filename' => 'img_6017.jpg',
      'uri' => 'public://img_6017.jpg',
      'filemime' => 'image/jpeg',
      'filesize' => 5091536,
      'status' => 1,
      'timestamp' => time(),
    ))
    ->execute();

  db_insert('file_managed')
    ->fields(array(
      'fid' => 8,
      'uid' => 1,
      'filename' => 'img_6228.jpg',
      'uri' => 'public://img_6228.jpg',
      'filemime' => 'image/jpeg',
      'filesize' => 4632038,
      'status' => 1,
      'timestamp' => time(),
    ))
    ->execute();

  db_insert('file_managed')
    ->fields(array(
      'fid' => 9,
      'uid' => 1,
      'filename' => 'url.jpg',
      'uri' => 'public://url.jpg',
      'filemime' => 'image/jpeg',
      'filesize' => 18467,
      'status' => 1,
      'timestamp' => time(),
    ))
    ->execute();

  db_insert('file_usage')
    ->fields(array(
      'fid' => 2,
      'module' => 'imce',
      'type' => 'file',
      'id' => 2,
      'count' => 1,
    ))
    ->execute();

  db_insert('file_usage')
    ->fields(array(
      'fid' => 3,
      'module' => 'file',
      'type' => 'node',
      'id' => 3,
      'count' => 1,
    ))
    ->execute();

  db_insert('file_usage')
    ->fields(array(
      'fid' => 4,
      'module' => 'file',
      'type' => 'node',
      'id' => 4,
      'count' => 1,
    ))
    ->execute();

  db_insert('file_usage')
    ->fields(array(
      'fid' => 5,
      'module' => 'file',
      'type' => 'node',
      'id' => 5,
      'count' => 1,
    ))
    ->execute();

  db_insert('file_usage')
    ->fields(array(
      'fid' => 6,
      'module' => 'file',
      'type' => 'node',
      'id' => 5,
      'count' => 1,
    ))
    ->execute();

  db_insert('file_usage')
    ->fields(array(
      'fid' => 7,
      'module' => 'file',
      'type' => 'node',
      'id' => 5,
      'count' => 1,
    ))
    ->execute();

  db_insert('file_usage')
    ->fields(array(
      'fid' => 8,
      'module' => 'file',
      'type' => 'node',
      'id' => 5,
      'count' => 1,
    ))
    ->execute();

  db_insert('file_usage')
    ->fields(array(
      'fid' => 9,
      'module' => 'file',
      'type' => 'node',
      'id' => 6,
      'count' => 1,
    ))
    ->execute();

  db_insert('taxonomy_index')
    ->fields(array(
      'nid' => 3,
      'tid' => 1,
      'sticky' => 0,
      'created' => time(),
    ))
    ->execute();

  db_insert('taxonomy_index')
    ->fields(array(
      'nid' => 3,
      'tid' => 2,
      'sticky' => 0,
      'created' => time(),
    ))
    ->execute();

  db_insert('taxonomy_index')
    ->fields(array(
      'nid' => 3,
      'tid' => 3,
      'sticky' => 0,
      'created' => time(),
    ))
    ->execute();

  db_insert('taxonomy_index')
    ->fields(array(
      'nid' => 6,
      'tid' => 4,
      'sticky' => 0,
      'created' => time(),
    ))
    ->execute();

  db_insert('taxonomy_term_data')
    ->fields(array(
      'tid' => 1,
      'vid' => 1,
      'name' => 'Блог',
      'description' => NULL,
      'format' => NULL,
      'weight' => 0,
    ))
    ->execute();

  db_insert('taxonomy_term_data')
    ->fields(array(
      'tid' => 2,
      'vid' => 1,
      'name' => 'Drublog',
      'description' => NULL,
      'format' => NULL,
      'weight' => 0,
    ))
    ->execute();

  db_insert('taxonomy_term_data')
    ->fields(array(
      'tid' => 3,
      'vid' => 1,
      'name' => 'друпал',
      'description' => NULL,
      'format' => NULL,
      'weight' => 0,
    ))
    ->execute();

  db_insert('taxonomy_term_hierarchy')
    ->fields(array(
      'tid' => 1,
      'parent' => 0,
    ))
    ->execute();

  db_insert('taxonomy_term_hierarchy')
    ->fields(array(
      'tid' => 2,
      'parent' => 0,
    ))
    ->execute();

  db_insert('taxonomy_term_hierarchy')
    ->fields(array(
      'tid' => 3,
      'parent' => 0,
    ))
    ->execute();


  if (function_exists('features_revert')) {
    $revert['drublog'][] = 'dependencies';
    $revert['drublog'][] = 'field';
    $revert['drublog'][] = 'filter';
    $revert['drublog'][] = 'image';
    $revert['drublog'][] = 'menu_custom';
    $revert['drublog'][] = 'menu_links';
    $revert['drublog'][] = 'node';
    $revert['drublog'][] = 'taxonomy';
    $revert['drublog'][] = 'user_permission';
    $revert['drublog'][] = 'user_role';
    $revert['drublog'][] = 'variable';
    $revert['drublog'][] = 'views_view';
    features_revert($revert);
  }


  db_insert('block')
    ->fields(array(
      'module' => 'blog',
      'delta' => 'recent',
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => -14,
      'region' => 'postscript_top_first',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => 'Последние записи',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'comment',
      'delta' => 'recent',
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => -11,
      'region' => 'postscript_top_first',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => 'Комментарии',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'system',
      'delta' => 'main',
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => -14,
      'region' => 'content',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => '',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'system',
      'delta' => 'help',
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => 0,
      'region' => 'help',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => '',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'search',
      'delta' => 'form',
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => -14,
      'region' => 'sidebar_first',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => '',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'user',
      'delta' => 'login',
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => -13,
      'region' => 'sidebar_first',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => '',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'similarterms',
      'delta' => '1',
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => -13,
      'region' => 'sidebar_first',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => 'Похожие записи',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'cctags',
      'delta' => '1',
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => -10,
      'region' => 'sidebar_first',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => '',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'views',
      'delta' => 'most_popular-block',
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => -12,
      'region' => 'postscript_top_first',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => 'Популярные записи',
      'cache' => -1,
    ))
    ->execute();

}

function drublog_post_install_1() {
  db_update('languages')
    ->fields(array(
      'prefix' => '',
    ))
    ->condition('language', 'en', '<>')
    ->execute();

  db_update('languages')
    ->fields(array(
      'prefix' => 'en',
    ))
    ->condition('language', 'en')
    ->execute();


  db_update('languages')
    ->fields(array(
      'enabled' => 0,
    ))
    ->condition('language', 'en')
    ->execute();


  db_insert('block_custom')
    ->fields(array(
      'bid' => 1,
      'body' => '<p>Укажите здесь свои контактные данные.</p>',
      'info' => 'Контакты',
      'format' => 'full_html',
    ))
    ->execute();


  db_insert('block_custom')
    ->fields(array(
      'bid' => 2,
      'body' => '<p>Мой блог © 2012</p>',
      'info' => 'Мой блог',
      'format' => 'full_html',
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'block',
      'delta' => 1,
      'theme' => 'bartik',
      'status' => 0,
      'weight' => 0,
      'region' => -1,
      'custom' => 0,
      'visibility' => 1,
      'pages' => 'contact',
      'title' => '',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'block',
      'delta' => 1,
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => 0,
      'region' => 'content_top',
      'custom' => 0,
      'visibility' => 1,
      'pages' => 'contact',
      'title' => '<none>',
      'cache' => -1,
    ))
    ->execute();

  $query = db_insert('block')
    ->fields(array(
      'module' => 'block',
      'delta' => 2,
      'theme' => 'bartik',
      'status' => 0,
      'weight' => 0,
      'region' => -1,
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => '',
      'cache' => -1,
    ))
    ->execute();

  db_insert('block')
    ->fields(array(
      'module' => 'block',
      'delta' => 2,
      'theme' => 'cti_flex',
      'status' => 1,
      'weight' => 0,
      'region' => 'footer',
      'custom' => 0,
      'visibility' => 0,
      'pages' => '',
      'title' => '',
      'cache' => -1,
    ))
    ->execute();


  //clear wysiwyg's cache	
  entity_get_controller('wysiwyg_profile')->resetCache();
  drupal_static_reset('wysiwyg_profile_load_all');
  cache_clear_all('wysiwyg_profiles', 'cache');
}

function drublog_install_tasks_alter(&$tasks, $install_state) {
  if (!empty($tasks['install_finished'])) {
    $task1 = $tasks['install_finished'];
  }
  if (!empty($tasks['change_language'])) {
    $task2 = $tasks['change_language'];
  }
  if (!empty($tasks['post_install_1'])) {
    $task3 = $tasks['post_install_1'];
  }

  unset($tasks['install_finished']);
  unset($tasks['change_language']);
  unset($tasks['post_install_1']);
  if (!empty($task2)) {
    $tasks['change_language'] = $task2;
  }
  if (!empty($task3)) {
    $tasks['post_install_1'] = $task3;
  }
  if (!empty($task1)) {
    $tasks['install_finished'] = $task1;
  }
}