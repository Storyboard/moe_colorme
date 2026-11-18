<!--//////////
バッグフォームのJS
bag_option_form
F19
@ date: 2026-10-30
//////////-->
<input type="hidden" name="option1" value="" id="option1">
<script>
	<{assign var="option_id" value=$option_value[0].option_bid}>
	var option_id = '<{$option_id}>';
	var bag_optons = [];
	var color_count = $('.option_color').length;
	var uraji_count =  $('.option_uraji').length;
	var count = 0;
	var color_uraji_list = [];
	for(var i = 0; i < color_count; i++) {
		color_uraji_list[i] = [];
		for(var j = 0; j < uraji_count; j++) {
			color_uraji_list[i][j] = count;
			bag_optons[count] = option_id + ',' + count.toString();
			count++;
		}
	}
	//本体色の選択
	var sel_color='';
	$("[name='option_color']").on('click',function(){
		sel_color = $("input[name='option_color']:checked").val();
        if(sel_color === '4'){
            $('input[name="option2"]:eq(0)').prop('checked', true);
            //$('input[name="option2"]:eq(4)').prop('checked', true);
            $('input[name="product_text[1]"]').val('名入れ/ロゴなし/no engraving');   
        }
		setBaOption1();
	});
	//裏地の選択
	var sel_uraji='';
	$("[name='option_uraji']").on('click',function(){
		sel_uraji = $("input[name='option_uraji']:checked").val();
		setBaOption1();
	});
	//登録されているオプション値をhiddenにセット
	function setBaOption1(){
		if(sel_color !== '' && sel_uraji !== ''){
			var sel_option1 = color_uraji_list[sel_color][sel_uraji];
			$('#option1').val(bag_optons[sel_option1]);
			//console.log($('#option1').val());
		}
	}
</script>