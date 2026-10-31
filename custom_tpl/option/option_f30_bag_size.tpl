<!--//////////
バッグフォームのJS
bag_size_ption_form
F30
@ date: 2026-10-30
//////////-->
<input type="hidden" name="option1" value="" id="option1">
<script>
	<{assign var="option_id" value=$option_value[0].option_bid}>
	var option_id = '<{$option_id}>';
	var bag_optons = [];
    var size_count = $('.option_size').length;
	var color_count = $('.option_color').length;
	var uraji_count =  $('.option_uraji').length;
	var count = 0;
	var size_color_uraji_list = [];
    
    for(var i = 0; i < size_count; i++) {
        size_color_uraji_list[i] = [];
        for(var j = 0; j < color_count; j++) {
            size_color_uraji_list[i][j] = [];
            for(var k = 0; k < uraji_count; k++) {
                size_color_uraji_list[i][j][k] = count;
                bag_optons[count] = option_id + ',' + count.toString();
                count++;
            }
        }
    }
    

    //サイズの選択
    var sel_size = '';
	$("[name='option_size']").on('click',function(){
		sel_size = $("input[name='option_size']:checked").val();
		setBaOption1();
	});
    
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
		if(sel_size !== '' && sel_color !== '' && sel_uraji !== ''){
			var sel_option1 = size_color_uraji_list[sel_size][sel_color][sel_uraji];
			$('#option1').val(bag_optons[sel_option1]);
			//console.log($('#option1').val());
		}
	}


    $('form[name="product_form"]').submit(function( event ) {
		var sel_naire = $('input[name="option2"]:radio:checked').val();
		if(sel_size === '' ){
            alert('バッグのサイズを選択してください');
            return false;
		} else if(sel_color  === ''){
            alert('バッグのカラーを選択してください');
            return false;
		} else if(sel_uraji  === ''){
           alert('バッグの裏地を選択してください');
           return false;
		} else if (typeof sel_naire === 'undefined' || sel_naire === '') {
          alert('名入れを選択してください');
          return false;
        }
	});
</script>