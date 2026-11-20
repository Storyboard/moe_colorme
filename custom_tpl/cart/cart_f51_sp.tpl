	<!-- 売切れ時・休止時・ログイン限定購入商品は表示しない  -->
<{if $product.soldout_flg === 0 && $shop_stop_flg === false && $product.login_sale_flg == false }>
	<div class="disable_cartin button_area">
	<{if $sid_name ==="革プリント有り" && $product.model ==="moe_b_002_p"}><div class="campaign_wrap mt0"><span class="caution">価格に革プリント料金が含まれます</span></div><{/if}>
	<{if $product.model ==="moe_b_001_p" ||  $product.model ==="moe_b_002_p" || $product.model ==="moe_s_004"}>
		<input type="submit" value="販売休止中です" class="btn btn-primary btn-m icons_shopcart" style="background-color: #999;" disabled/>
	<{else}>
		<{if $bid_name !=="その他小物"}><p class="info_alert" style="font-size: 0.8rem; color:#333; text-align: center; padding-top: 0.5rem; margin-bottom: 0.3rem; display:block;"><!--裏地は在庫限り。-->送料無料。カート追加後のご注文はお早めに<!--送料無料。裏地は在庫限りのためご注文はお早めに--><!--送料無料。Xmasプレゼントに間に合うご注文です--></p><{/if}>
		<input type="submit" value="カートに入れる&nbsp;>>" class="btn btn-primary btn-m icons_shopcart cart_btn"/>
		<{if $bid_name ==="バッグ"}><p class="info_alert" style="font-size: 0.8rem; text-align: center; padding-top: 0.5rem; display:block;"><a href="<{$prod_inq_url}>" title="姫路事務所でバッグや革のサンプル確認の申し込み">姫路事務所でバッグや革のサンプル確認できます。<br>お問合せより事前のご連絡お願いします。 >></a></p><{/if}>
		<p class="info_alert" style="font-size: 0.8rem; text-align: center; padding-top: 0.5rem; display:block;"><!--お届けまで通常よりお時間のかかる場合があります--><!--現在オーダーが集中しており、通常より商品のお届けまでお時間がかかる場合があります--><!--オーダー集中のため商品のお届けに時間がかかっています--></p><!--<p class="info_alert" style="font-size: 0.8rem; text-align: center; padding-top:0; display:block;">現在、クレジットカード決済不具合のため他の決済方法をご利用ください</p>--> 
	<{/if}>
	<{if $sid_name ==="革プリント有り"}><div class="normal_bag_info"><{if $product.model ==="moe_b_002_p"}><a href="https://shop.moe-bag.jp/?pid=93038092">革プリントなしsproutトートはこちら >></a><{elseif $product.model ==="moe_b_001_p" }><a href="https://shop.moe-bag.jp/?pid=94662961">革プリントなしurchin３Wayはこちら >></a><{/if}></div><{/if}>
	<{if $product.password_field != "" }><div class="campaign_wrap"><span class="caution">商品を購入するにはパスワードが必要です</span><{$product.password_field}></div><{/if}>
	</div>
	<{if $easy_order_flg === true}><div class="btn_quick disable_quick"><a href="<{$easy_order_url}>" class="btn btn-success btn-large">クイック購入</a></div><{/if}>
<{else}>
	<{if $product.soldout_flg }><div class="disable_cartin button_area"><input type="submit" value="販売休止中です" class="btn btn-primary btn-m icons_shopcart" style="background-color: #999;" disabled/></div><{elseif $product.login_sale_flg }><div>会員のみ購入できます</div><{/if}>
<{/if}>