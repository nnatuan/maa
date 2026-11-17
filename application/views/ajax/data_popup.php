<?php  
	$nid = isset($_POST['id']) ? intval($_POST['id']) : 0;
	$data = get_news_by_id($nid);

	$langsite = isset($_SESSION['_lang']) && !empty($_SESSION['_lang']) ? $_SESSION['_lang'] : 'eng';

	if ($data) {
		$title_key = get_index_trans($langsite, 'ctitle');
		$content_key = get_index_trans($langsite, 'ccontent');
		$short_content_key = get_index_trans($langsite, 'cshort_content');

		// Set translated title
		$title = !empty($data[$title_key]) ? $data[$title_key] : (!empty($data['ctitle']) ? $data['ctitle'] : '');

		// Check if content has actual content
		$content = isset($data[$content_key]) ? $data[$content_key] : '';
		$clean_content = trim(strip_tags($content, '<img><video><iframe>'));
		$clean_content = str_replace(array('&nbsp;', ' '), '', $clean_content);

		if (empty($clean_content)) {
			// Fallback to short content in current language
			$short = isset($data[$short_content_key]) ? $data[$short_content_key] : '';
			$clean_short = trim(strip_tags($short, '<img><video><iframe>'));
			$clean_short = str_replace(array('&nbsp;', ' '), '', $clean_short);
			if (!empty($clean_short)) {
				$content = $short;
			} else if (!empty($data['ccontent']) && trim(str_replace('&nbsp;', '', strip_tags($data['ccontent'], '<img><video><iframe>'))) !== '') {
				$content = $data['ccontent'];
			} else {
				$content = !empty($data['cshort_content']) ? $data['cshort_content'] : '';
			}
		}

		$data['ctitle'] = $title;
		$data['ccontent'] = $content;
	}

	header('Content-Type: application/json; charset=utf-8');
	exit(json_encode($data));
?>