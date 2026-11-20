<!--//////////
カートまわり（バッグ用）F60 / page_num=59
商品詳細ページ div.cart_wrap 直下で読み込み
cart_contents / cart_sp / cart_action / cart_pc の4ブロックを置き換える想定
@ date: 2026/11/20
//////////-->
<div id="cart_box" class="cartbox">

	<!-- 商品名・価格 -->
	<{assign var="product_disp_name" value=""}>
	<{if $product.model ==="moe_b_001" }>
		<{assign var="product_disp_name" value="urchin3wayバッグ"}>
	<{elseif $product.model ==="moe_b_002"}>
		<{assign var="product_disp_name" value="sproutトートバッグ"}>
	<{elseif $product.model ==="moe_b_003"}>
		<{assign var="product_disp_name" value="snazzyクラッチバッグ"}>
	<{elseif $product.model ==="moe_b_004"}>
		<{assign var="product_disp_name" value="coltishメッセンジャーバッグ"}>
	<{elseif $product.model ==="moe_b_005"}>
		<{assign var="product_disp_name" value="baeトートバッグ"}>
	<{elseif $product.model ==="moe_b_006"}>
		<{assign var="product_disp_name" value="amicoビジネストートバッグ"}>
	<{elseif $product.model ==="moe_b_007"}>
		<{assign var="product_disp_name" value="digne縦型ショルダーバッグ"}>
	<{elseif $product.model ==="moe_b_008"}>
		<{assign var="product_disp_name" value="beetleボディバッグ"}>
	<{elseif $product.model ==="moe_b_009"}>
		<{assign var="product_disp_name" value="raffineミニトートバッグ"}>
	<{elseif $product.model ==="moe_b_010"}>
		<{assign var="product_disp_name" value="vivanteミニショルダーバッグ"}>
	<{elseif $product.model ==="moe_b_011"}>
		<{assign var="product_disp_name" value="foalミニショルダーバッグ"}>
	<{/if}>
	<p class="cartbox_name"><{$product_disp_name}></p>
	<{if $product.sales != ""}>
	<div class="cartbox_price" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
		<meta itemprop="url" content="<{$page_url}>">
		<{if $product.model !=="moe_b_012" && $product.model !=="moe_b_013"}>
		<meta itemprop="priceCurrency" content="JPY">
		<meta itemprop="itemCondition" content="NewCondition">
		<meta itemprop="availability" content="InStock">
		<meta itemprop="priceValidUntil" content="2030-12-31">
		<meta itemprop="price" content="<{$price_regular}>">
		<{/if}>
		<{if $product.model ==="moe_b_003"}>
		<span>mini &yen;34,000（税込 &yen;37,400）</span><span class="cartbox_price-sep"> / </span><span>レギュラー &yen;37,000（税込 &yen;40,700）</span>
		<{elseif $product.model ==="moe_b_004"}>
		<span>mini &yen;33,000（税込 &yen;36,300）</span><span class="cartbox_price-sep"> / </span><span>レギュラー &yen;36,000（税込 &yen;39,600）</span>
		<{elseif $product.model ==="moe_b_007" || $product.model ==="moe_b_008"}>
		<span>mini &yen;34,000（税込 &yen;37,400）</span><span class="cartbox_price-sep"> / </span><span>レギュラー &yen;36,000（税込 &yen;39,600）</span>
		<{else}>
		<{if $waribiki > 0}><s>&yen;<{$product.price|replace:'円(税込':'（税込 &yen;'|replace:'円)':'）'}></s> &rArr; <{/if}><span>&yen;<{$product.sales|replace:'円(税込':'（税込 &yen;'|replace:'円)':'）'}></span>
		<{/if}>
	</div>
	<{/if}>
	<{if $product.model != ""}><meta itemprop="mpn" content="<{$product.model}>"><{/if}>

	<!-- 購入数（売切れ時・休止時・ログイン限定購入商品は表示しない） -->
	<{if $product.soldout_flg === 0 && $shop_stop_flg === false && $product.login_sale_flg === false }>
	<div class="cartbox_count cart_item-count">
		<span class="cartbox_count-label">購入数</span>
		<span class="custom_select-wrap">
			<select name="ul_product_num" class="custom_select" onchange="changeItemCount(this);"><option value="1" selected>1</option></select>
			<span class="custom_select-btn"></span>
		</span>
		<input type="hidden" name="product_num" value="1">
	</div>
	<script>
		function changeItemCount(obj){
			var idx = obj.selectedIndex;
			document.getElementsByName("product_num").value = obj.options[idx].value;
		}
	</script>
	<{/if}>

	<!-- 安心ポイント -->
	<div class="cartbox_info">
		<ul class="cartbox_list">
			<li class="cartbox_item cartbox_item-delivery"><{if $bid_name ==="その他小物"}>10,000円以上で送料無料<{else}>送料無料<{/if}>｜お届けまで約<{if $bid_name ==="バッグ"}>6<{else}>4<{/if}>週間</li>
			<{if $product.gift_ng_status === null }>
			<li class="cartbox_item cartbox_item-gift">ラッピング &yen;500（カート指定）</li>
			<{else}>
			<li class="cartbox_item cartbox_item-gift">ラッピング対象外の商品です</li>
			<{/if}>
			<li class="cartbox_item cartbox_item-ok">初期不良は無償対応</li>
			<li class="cartbox_item cartbox_item-star" id="cartbox_review"><a href="#review" data-id="review" title="お客様の声" onclick="moeTrack('review_link_click',{pid:moePid(),product_name:moeName(),link_label:'カート枠_お客様の声'});">評価 <span class="js-cartbox-avg"></span>（<span class="js-cartbox-count"></span>件）お客様の声 &gt;&gt;</a></li>
			<li class="cartbox_item cartbox_item-bag"><a href="<{$prod_inq_url}>" title="姫路事務所でバッグや革のサンプル確認の申し込み">姫路事務所でサンプル確認 &gt;&gt;</a></li>
		</ul>
		<p class="cartbox_notice">※受注生産のため返品不可。<br>サイズ・色は事前にご相談ください</p>
	</div>

	<!-- カートボタン -->
	<div class="disable_cartin button_area">
		<p class="info_alert" style="font-size: 0.8rem; color:#333; text-align: center; padding-top: 0.5rem; margin-bottom: 0.3rem; display:block;">裏地は在庫限りなのでご注文はお早めに。</p>
		<input type="submit" value="カートに入れる&nbsp;&gt;&gt;" class="btn btn-primary btn-m icons_shopcart cart_btn">
	</div>
	<p class="cartbox_payment">分割でのお支払い OK!</p>

	<!-- 問い合わせ・特商法 -->
	<a href="<{$prod_inq_url}>" class="cartbox_inquiry" title="この商品について質問する">この商品について質問する &gt;&gt;</a>
	<a href="<{$sk_url}>" class="cartbox_law" title="特定商取引法に基づく表記 (返品など)">特定商取引法に基づく表記 &gt;&gt;</a>

</div>
<script>
/* 評価・件数：お客様の声（tmpl_type=2 l498-518）が #agg-rating-value / #agg-review-count にセットした値を表示。
   レビューが無い（集計要素が出力されない）商品は行ごと非表示のまま */
document.addEventListener('DOMContentLoaded', function(){
	var row = document.getElementById('cartbox_review');
	if (!row) { return; }
	var v = document.getElementById('agg-rating-value');
	var c = document.getElementById('agg-review-count');
	var avg = v ? parseFloat(v.getAttribute('content')) : NaN;
	var cnt = c ? parseInt(c.getAttribute('content'), 10) : NaN;
	if (isNaN(avg) || !(cnt > 0)) { return; }
	row.querySelector('.js-cartbox-avg').textContent = avg.toFixed(1);
	row.querySelector('.js-cartbox-count').textContent = cnt;
	row.classList.add('is-show');
});
</script>
