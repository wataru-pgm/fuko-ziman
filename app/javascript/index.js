jQuery(function($){
	$('.tab').click(function(){
		$('.is-active').removeClass('is-active');
		$(this).addClass('is-active');
		$('.is-show').removeClass('is-show');
        // クリックしたタブからインデックス番号を取得
		const index = $(this).index();
        // クリックしたタブと同じインデックス番号をもつコンテンツを表示
		$('.boards').eq(index).addClass('is-show');
	});
});