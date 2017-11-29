$('.star-rating').raty({
	path: 'assets/images',
	readOnly: true,
	score: function() {
		return $(this).attr('data-score');
	}
});
