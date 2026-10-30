<!--//////////
商品詳細ページ
@ author:	m.uramoto
@ date:		2015/10/18
//////////-->
<{ if $product.id !== "" }> 
<!--割引率の計算 --> 
<{assign var="price_regular" value=$product.price|regex_replace:"/円.*|[^0-9]/":""}>
<{assign var="price_orosi" value=$product.sales|regex_replace:"/円.&#229;*|[^0-9]/":""}>
<{math equation="round((1-('$price_orosi'/'$price_regular'))*100)" assign="waribiki"}> 
<script>
fbq('track', 'ViewContent', {
  content_ids: ['<{$product.id}>'], 
  content_type: 'product',
  value: <{$price_regular}>, 
  currency: 'JPY'
});
</script>
<div class="footstamp" itemscope itemtype="http://schema.org/BreadcrumbList">
  <!-- パンくずナビ -->
	<p itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem"><a itemprop="item" href="<{$home_url}>"><span itemprop="name" class="breadcrumb_name">online shop</span><meta itemprop="position" content="1" /></a><{if $bid_name != ""}><span>&gt;</span><a itemprop="item" href='<{$home_url}><{$bid_link}>'><span itemprop="name" class="breadcrumb_name"><{$bid_name}></span><meta itemprop="position" content="2" /></a><{/if}>
		<{if $sid_name != ""}><span>&gt;</span><a itemprop="item" href='<{$home_url}><{$sid_link}>'><span itemprop="name" class="breadcrumb_name"><{$sid_name}></span><meta itemprop="position" content="3" /></a><{/if}></p>
  <!--// パンくずナビ --> 
</div>
<!--/////転送サービスバナー（海外からのアクセスで表示）/////-->
<!--
<a href="https://www.tenso.com/en/guide/shop/shop.html?bn_code=shop-moe-bag-jp" target="_blank" class="banner_tenso" style="margin-bottom:0.5rem; display:block;"><img src="//www2.tenso.com/ext/banner.php?f=banner_728x90_en.gif" alt="海外発送/国際配送サービスの転送コム"></a> 
-->
<!--/////転送サービスバナー（海外からのアクセスで表示ここまで）/////-->

<form name="product_form" method="post" action="<{$cart_url}>" class="cart_form clearfix">
  
  <!-- Product(商品名) --> 
  <{if $sid_name ==="革プリント有り"}>
      <span class="caution">プリント用のデザインデータが必要です</span>
  <{elseif $product.model ==="moe_b_012" || $product.model ==="moe_b_013"}>
      <span class="caution">現在、2021年春リリースに向けて準備中です。</span>
  <{/if}>
	<{if $bid_name ==="バッグ" && $sid_name !=="革プリント有り"}><span class="info_alert" style="font-size: 0.8rem; padding-bottom: 0.5rem; display:block;" ><a href="<{$prod_inq_url}>">姫路事務所でサンプル確認できます >></a></span><{/if}> 
  <h1 class="product_name" itemprop="name"><{$product.name}></h1>
	<span itemprop="brand" itemscope itemtype="http://schema.org/Brand"><meta itemprop="name" content="moe"></span>
  <div class="h1_line"></div>

<div id="sale_info"><span class="sale_price">価格：<{$product.regular_price}><{if $bid_name ==="バッグ"}> <b style="color:#d00;">[送料無料]</b><{/if}></span><br><span class="sale_leadtime">ご注文後にひとつずつ製作｜標準納期：<{if $bid_name ==="バッグ"}>6<{else}>４<{/if}>週間</span><br>
    <span style="display: block;text-align: right;"><a href="https://moe-bag.jp/service/info_service" class="caution-txt" >＊納期は受注状況により変動する場合があります &gt;&gt;</a></span></div>
  <{if isset($smarty.server.HTTPS) && ($smarty.server.HTTPS eq "on")}>
  <{assign var="page_url" value="https://shop.moe-bag.jp/?pid="|cat:$product.id}>
  <{else}>
  <{assign var="page_url" value="https://shop.moe-bag.jp/?pid="|cat:$product.id}>
  <{/if}>

  <!--////// グループ /////////-->
  <div class="tag_frame"><{section name=cnt loop=$group_breadcrumb_list}><{section name=num loop=$group_breadcrumb_list[cnt].group_breadcrumb}><a href="<{$group_breadcrumb_list[cnt].group_breadcrumb[num].link_url}>"><{$group_breadcrumb_list[cnt].group_breadcrumb[num].name}></a><{/section}><{/section}></div>
  <!--////// グループここまで /////////--> 

  <{assign var="p_name" value=$product.name|escape:'url'}>
  <div class="sns-icons"> 
    <script type="text/javascript">
<!--
document.write('<a href="https://twitter.com/intent/tweet?url=' + encodeURIComponent(location.href) + '&text=' + encodeURIComponent("<{$product.name|strip_tags}>") + '&tw_p=tweetbutton" onclick="javascript:window.open(this.href, \'\', \'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600\');return false;" style="background:#00acee" target="_blank"><i class="fa fa-twitter"></i>&nbsp;twitter<span class="sns_count tw_count"></span></a>');  
// -->
</script> 
    
    <!--Facebookいいね！/シェアボタン--> 
    <a href="https://www.facebook.com/sharer.php?src=bm&u=<{$page_url}>&t=<{$p_name}>" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" style="background:#4561b0"><i class="fa fa-facebook-square"></i>&nbsp;Facebook<span class="sns_count fb_count"></a></span> 
    <!-- pocket --> 
    <a href="https://getpocket.com/edit?url=<{$page_url}>&title=<{$p_name}>" style="background:#F03E51" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;">Pocket&nbsp; <span class="sns_count pocket_count"></a></span> 
    <!--はてブボタン--> 
    <a href="https://b.hatena.ne.jp/add?mode=confirm&url=<{$page_url}>" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=400,width=510');return false;" style="background:#5279E7"><i class="fa fa-hatena"></i>&nbsp;はてブ<span class="sns_count hatena_count"></a></span> 
    <!-- feedly --> 
    <a href="https://feedly.com/index.html#subscription%2Ffeed%2Fhttp%3A%2F%2Fmoe-bag.jp%2Ffeed%2F" target="blank" style="background:#87C040"><i class="fa fa-rss"></i>&nbsp;feedly<span class="sns_count feedly_count"></a></span></div>
  

  
  <div class="product_detail_area" >
    <meta itemprop="sku" content="<{$product.id}>" />
    <!--///// sart item top /////-->
    <div>
      <h2 itemprop="description"><{$product.simple_explain}></h2>
      <!-- 商品登録フォームの簡易説明機能 -->
      <div id="info_lightbox" class="caution-txt" style="margin-top: -1.5rem; text-align: right; display: none;">▼画像タップでギャラリー切替</div>
      <div class="product_images">
        <div class="zoom-section">
          <div class="zoom-small-image clearfix">
            <div id="zoom_stage"> 
              <!-- 商品画像 --> 
              <{if $product.img_url != ""}><img width="728" height="450" src="<{$product.img_url}>" itemprop="image" alt="<{$product.name}>"/><{else}>
              <div class="cloud-zoom-gallery" ><img width="512" height="512" src="https://img.shop-pro.jp/tmpl_img/56/l.gif"  alt="<{$product.name}>" /></div>
              <{/if}> 
              <!--// 商品画像 --> 
              <{if $waribiki > 0}><span class="news-diary news-circle"><{$waribiki}>%0FF!</span><{/if}><{if $product.model ==="moe_b_002_p"}><p id="item_img_info" class="info_alert" style="font-size: 0.8rem; color:#333; text-align: center; padding-top: 0.5rem; margin-bottom: 0.3rem; display:block;">現在、インナーバッグのフタはファスナー仕様です。</p><{elseif $bid_name ==="バッグ"}><p id="item_img_info" class="info_alert" style="font-size: 0.8rem; color:#333; text-align: center; padding-top: 0.5rem; margin-bottom: 0.3rem; display:block;"></p><{/if}></div>
          </div>
            <{*  画像ギャラリーのaltの設定 *}>
            <{assign var="img_alt_tpl" value=$file_name|regex_replace:"/\/(.*?)\\.tpl/":""}>
            <{if $product.model ==="moe_b_001"}>
                <{include file="$img_alt_tpl/free22.tpl"}>
            <{elseif $product.model ==="moe_b_002"}>
                <{include file="$img_alt_tpl/free23.tpl"}>
            <{elseif $product.model ==="moe_b_003"}>
                <{include file="$img_alt_tpl/free24.tpl"}>
            <{elseif $product.model ==="moe_b_004"}>
                <{include file="$img_alt_tpl/free25.tpl"}>
            <{elseif $product.model ==="moe_b_005"}>
                <{include file="$img_alt_tpl/free36.tpl"}>
            <{elseif $product.model ==="moe_b_006"}>
                <{include file="$img_alt_tpl/free37.tpl"}>
            <{elseif $product.model ==="moe_b_007"}>
                <{include file="$img_alt_tpl/free44.tpl"}>
            <{elseif $product.model ==="moe_b_008"}>
                <{include file="$img_alt_tpl/free45.tpl"}>
            <{elseif $product.model ==="moe_b_009"}>
                <{include file="$img_alt_tpl/free50.tpl"}>
            <{elseif $product.model ==="moe_b_010"}>
                <{include file="$img_alt_tpl/free54.tpl"}>
            <{elseif $product.model ==="moe_b_011"}>
                <{include file="$img_alt_tpl/free55.tpl"}>
            <{elseif $product.model ==="moe_s_001"}>
                <{include file="$img_alt_tpl/free26.tpl"}>
            <{elseif $product.model ==="moe_s_002"}>
                <{include file="$img_alt_tpl/free27.tpl"}>
            <{elseif $product.model ==="moe_s_003"}>
                <{include file="$img_alt_tpl/free28.tpl"}>
            <{elseif $product.model ==="moe_s_004"}>
                <{include file="$img_alt_tpl/free29.tpl"}>
            <{else}>
              <div class="zoom-desc clearfix"><{if $product.img_url != ""}>
                <div class="cloud-zoom-gallery" ><img loading="lazy" width="80" height="49" class="zoom-tiny-image" src="<{$product.img_url}>" alt="" /></div>
                <{else}>
                <div class="cloud-zoom-gallery" ><img loading="lazy" width="80" height="49" class="zoom-tiny-image" src="https://img.shop-pro.jp/tmpl_img/56/l.gif"  alt="" /></div>
                <{/if}>
                <{if $otherimg_num != 0}>
                <{section name=num loop=$otherimg}>
                <{if $otherimg[num].url != ""}>
                <div class="cloud-zoom-gallery"><img loading="lazy" width="80" height="49" class="zoom-tiny-image" src="<{$otherimg[num].url}>"  alt="" /></div>
                <{/if}>
                <{/section}>
                <{/if}></div>
            <{/if}>
            <{*  画像ギャラリーのaltの設定ここまで *}>
          <!--///// End zoom-desc /////-->
        </div>
        <!--///// End zoom-section /////--> 
      </div>
      <!--///// End product_images /////--> 
    </div>
    <!--///// End item top /////--> 
    <!--/////////////////-->
  <!--////// ローカルナビ /////////--> 
  <{assign var="ua" value=$smarty.server.HTTP_USER_AGENT|lower}>
	<div class="shop_item-navi"><a href="#detail" title="商品について" data-id="item_contents"><span>商品について</span></a><a href="#review" title="お客様の声" data-id="review"><span>お客様の声</span></a><{if $bid_name ==="バッグ" && $sid_name ==="革プリントなし"}><a href="#question" title="よくあるご質問" data-id="question"><span> Q&A </span></a><{else}><!--<a href="#history" title="開発秘話" data-id="history"><span>開発秘話</span></a>--><{/if}><a href="#data" title="サイズ・仕様" data-id="data"><span>サイズ・仕様</span></a><{if $ua|regex_replace:'/.*android.*/i':'android' eq 'android' || $ua|regex_replace:'/.*iphone.*/i':'iphone' eq 'iphone' || $ua|regex_replace:'/.*ipad.*/i':'ipad' eq 'ipad' || $ua|regex_replace:'/.*ipod.*/i':'ipod' eq 'ipod'}> 
    <!--////// スマートフォン /////////--> 
    <!--<a href="#product_option" title="オプション"><span>オプション</span></a>--><{if $history_num != 0}><!--<a href="#checked_item" title="最近チェックした商品" data-id="checked_item"><span>最近チェックした商品</span></a>--><{/if}><{else}> 
    <!--////// PC /////////--> 
    <{if $bid_name =="その他小物"}>
    <{ if $review_item_num != "" || $product.model==="moe_s_002" }><!--<a href="#review" title="お客様の声"><span>お客様の声</span></a>--><{/if}> 
    <{else}><!--<a href="#review" title="お客様の声"><span>お客様の声</span></a>--><{/if}>
    <{if $history_num != 0}><a href="#checked_item" title="最近チェックした商品" data-id="checked_item"><span>最近チェックした商品</span></a><{/if}>
    <{/if}><a href="#order_stage" title="カートに入れる" class="btn-primary selected" data-id="tab_cart"><span id="top_navi">ご注文はこちら</span></a></div>
  
  <!--////// ローカルナビここまで /////////-->
<!--オプション設定ここから-->
    <div class="add_cart <{$product.model}>" id="cart_in">
<{if $product.model==="moe_b_012" || $product.model==="moe_b_013"}>
    <p class="info_alert">現在、準備中です。</p>
			<meta itemprop="mpn" content="<{$product.model}>">
<{else}>
    
    <{if $bid_name === "バッグ" && $sid_name === "革プリントなし"}>
        <{assign var="bag_what_how_tpl" value=$file_name|regex_replace:"/\/(.*?)\\.tpl/":""}>
        <{include file="$bag_what_how_tpl/free58.tpl"}>
    <{/if}>
    <div id="tab_cart" class="tab-content selected">
    <h2 id="order_stage">ご注文</h2>
        <strong style="display: block;text-align: center;color: #eb5a24;">あなただけのオリジナル！お届けまで約<{if $bid_name ==="バッグ"}>6<{else}>４<{/if}>週間<br>クリスマス、年末年始に向けて早めのご注文がおすすめです！</strong>
        <ol class="item_feature">
            <strong style="display: block;color:#6b3c30;text-align: center;margin-bottom: 0.5rem;">ご注文後にひとつずつ製作</strong>
            <li><{if $bid_name ==="バッグ"}>名入れや裏地など<{if $product.model ==="moe_b_003" || $product.model ==="moe_b_004" || $product.model ==="moe_b_005" || $product.model ==="moe_b_007" || $product.model ==="moe_b_008"}>４<{else}>３<{/if}>つのオプションを設定<{else}>カラーを選択<{/if}></li>
            <li><{if $bid_name ==="バッグ"}>部位を選定して革の裁断、名入れ、縫製作業<{else}>名入れをして職人による縫製<{/if}></li>
            <li>送料無料。縫製や汚れなどの初期不良は<strong style="color: #eb5a24;">無償対応</strong></li>
        </ol><{if $bid_name === "バッグ" && $sid_name === "革プリントなし"}><div class="nav_item_check">
                <a href="#data" title="サイズや重さをチェック" data-id="data" class="js-size-link" onclick="moeTrack('size_spec_link_click',{pid:moePid(),product_name:moeName(),link_label:'サイズや重さをチェック'});">サイズや重さ</a><a href="#question" title="名入れ等よくあるご質問" data-id="question" class="js-faq-link" onclick="moeTrack('faq_link_click',{pid:moePid(),product_name:moeName(),link_label:'名入れ等よくあるご質問'});">よくあるご質問</a><a href="#review" title="お客様の声" data-id="review" class="js-review-link" onclick="moeTrack('review_link_click',{pid:moePid(),product_name:moeName(),link_label:'お客様の声'});">お客様の声</a></div><{/if}>
        <p><a href="https://moe-bag.jp/service/info_service">オプションやご注文に関するご質問はこちら &gt;&gt;</a><br><a href="https://moe-bag.jp/service/info_service">革の色見本ご希望の方はこちら &gt;&gt;</a></p>
	<!--//////////商品オプション/////////--> 
	<!--商品オプション--> 
	<{if !$option_output_mode}>
	<{if $product.model ==="moe_s_004"}><{* 4択 *}>
		<{assign var="option_html_tpl" value=$file_name|regex_replace:"/\/(.*?)\\.tpl/":""}>
		<{include file="$option_html_tpl/free21.tpl"}>          
    <{else}>
	<{section name=num loop=$option}>
		<{if $bid_name ==="バッグ" && $option[num].select_name === "option1"}><{*  h5タグの設定 *}>
		<!--//////////購入前確認（バナー）ここから/////////--> 
			<{if $product.model==="moe_b_001_p" || $product.model==="moe_b_002_p"}>
			<div class="check_iteminfo"><span class="caution">購入前にご確認ください</span><{if $product.model==="moe_b_001_p"}> 
			  <!--/////革プリント3way/////--> 
			  <a href="https://shop.moe-bag.jp/?pid=94662961" title="標準仕様のarchin 3wayはこちら"><img loading="lazy" width="728" height="90" src="https://img14.shop-pro.jp/PA01305/529/etc/bag_option_print_728x90.png?cmsp_timestamp=2131" alt=""></a><{else}> 
			  <!--/////革プリントtote/////--> 
			  <a href="https://shop.moe-bag.jp/?pid=93038092" title="標準仕様のsprout toteはこちら"><img loading="lazy" width="728" height="90" src="https://img14.shop-pro.jp/PA01305/529/etc/bag_option_print_728x90.png?cmsp_timestamp=2131" alt=""></a><{ /if }>
			  <p>＊色&times;裏地、名入れの設定をしてください</p>
			</div>
			<{elseif $product.model ==="moe_b_001" || $product.model ==="moe_b_002"}>
			<div class="check_iteminfo"><span class="caution">購入前にご確認ください</span><{if $product.model ==="moe_b_001"}> 
			  <!--/////3way/////--> 
			  <a href="https://shop.moe-bag.jp/?pid=85454309" title="革プリント仕様のarchin 3wayはこちら"><img loading="lazy" width="728" height="90" src="https://img14.shop-pro.jp/PA01305/529/etc/bag_option_normal_728x90.png?cmsp_timestamp=210207" alt=""></a><{else}> 
			  <!--/////toto/////--> 
			  <a href="https://shop.moe-bag.jp/?pid=94662897" title="革プリント仕様のsprout toteはこちら"><img loading="lazy" width="728" height="90" src="https://img14.shop-pro.jp/PA01305/529/etc/bag_option_normal_728x90.png?cmsp_timestamp=210207" alt=""></a><{ /if }>
			  <p>＊色&times;裏地、名入れの設定をしてください</p>
			</div>
			<{ /if }><{* end if $product.model... *}>
		<!--//////////購入前確認ここまで/////////-->
			<{if $bid_name ==="バッグ"}>
				<{assign var="bagoption_tpl" value=$file_name|regex_replace:"/\/(.*?)\\.tpl/":""}>
				<{if $product.model ==="moe_b_002"}>
					<{include file="$bagoption_tpl/free13.tpl"}>
				<{elseif $product.model ==="moe_b_002_p" }>
					<{include file="$bagoption_tpl/free18.tpl"}>
				<{elseif $product.model ==="moe_b_001"}>
					<{include file="$bagoption_tpl/free14.tpl"}>
				<{elseif $product.model ==="moe_b_001_p"}>
					<{include file="$bagoption_tpl/free17.tpl"}>
				<{elseif $product.model ==="moe_b_003" }>
					<{include file="$bagoption_tpl/free15.tpl"}>
				<{elseif $product.model ==="moe_b_004"}>
					<{include file="$bagoption_tpl/free16.tpl"}>
				<{elseif $product.model ==="moe_b_005" }>
					<{include file="$bagoption_tpl/free32.tpl"}>
				<{elseif $product.model ==="moe_b_006" }>
					<{include file="$bagoption_tpl/free35.tpl"}>
				<{elseif $product.model ==="moe_b_007" }>
					<{include file="$bagoption_tpl/free46.tpl"}>
				<{elseif $product.model ==="moe_b_008" }>
					<{include file="$bagoption_tpl/free47.tpl"}>
				<{elseif $product.model ==="moe_b_009" }>
					<{include file="$bagoption_tpl/free49.tpl"}>
				<{elseif $product.model ==="moe_b_010" }>
					<{include file="$bagoption_tpl/free56.tpl"}>
				<{elseif $product.model ==="moe_b_011" }>
					<{include file="$bagoption_tpl/free57.tpl"}>
				<{elseif $product.model ==="moe_b_001_p_test"}>
					<{include file="$bagoption_tpl/free41.tpl"}>
				<{/if}>
			<{/if}><{* end if $bid_name ==="バッグ" *}>

		<{else}><{*  ここよりバッグ以外のoption1またはoption2 のh5タグ*}>
			<div class="option_container-wrap">
			<h5><{if $bid_name !=="バッグ" && $option[num].select_name === "option1"}>色を選択してください<{elseif $product.model==="moe_s_002"}><{assign var="option_type" value="opt_crave"}>刻印のデザイン<{else}><{assign var="option_type" value="opt_name"}>名入れ書体を選択してください（横書き）<{/if }></h5>
				<{if $product.model !== "moe_s_002" && $product.model !== "moe_s_003"}><{if $product.model !== "moe_b_001" && $product.model !== "moe_b_001_p" && $product.model !== "moe_b_002" && $product.model !== "moe_b_002_p"}><div style="text-align:left;  margin-bottom:0.5rem; margin-left:2rem;"><a href="//moe-bag.jp/service/info_service">名入れ（ロゴ）無し対応可。詳しくはこちら &gt;&gt;</a></div><{/if }><div style="text-align:left; margin-bottom:1rem; margin-left:2rem;"><a <{if ($bid_name === "バッグ" && $sid_name === "革プリントなし") || $product.model==="moe_s_001"}>class="js-font-modal"<{else}>href="//moe-bag.jp/blog/info/add_handwriting_font" <{/if}>>書体のアルファベット一覧はこちら &gt;&gt;</a></div><{/if }>
				<div class="option_container <{$option_type}>">
				  <{assign var="option_data" value=$option_value[num]}>
				  <{assign var="option_data_id" value=$option_value[num].id}>
				  <{assign var="option_data_name" value=$option_value[num].name}>
				  <{assign var="opt_name" value=$option[num].select_name}>

				  <{section name=item_data loop=$option_data_id}>
					<{assign var="loop_count" value=$smarty.section.item_data.index}>
					<{assign var="opt_title" value=$opt_name|cat:'-'|cat:$smarty.section.item_data.index}>
				  <label for="<{$opt_title}>" class="<{$opt_title}>">
				  <input type="radio" name="<{$opt_name}>" value="<{$option_data_id[item_data]}>" id="<{$opt_title}>">
				  <{$option_data_name[item_data]}>
				  <div class="item_option_sample"><{if $option[num].select_name === "option1" && $bid_name ==="バッグ"}>
					<div class="item_option_color"></div>
					<div class="item_option_image"></div>
					<{elseif $option[num].select_name == "option1" && $bid_name =="その他小物"}>
					<{if $product.model ==="moe_s_002" || $product.model ==="moe_s_003"}>
					<{if {$opt_title ==="option1-2" || $opt_title ==="option1-3" || $opt_title ==="option1-4" || $opt_title ==="option1-5"}>
					<div class="item_option_color2"></div>
					<{else}>
					<div class="item_option_color2"><img loading="lazy" src="//moe-bag.jp/shop_data/images/item/stech_frame200x200.png" alt="ステッチ有り"></div>
					<{/if}>
					<{else}>
					<div class="item_option_color2"></div>
					<{/if}>
					<{elseif $option[num].select_name === "option2" && $product.model ==="moe_s_002"}>
					<div class="item_option_logo"></div>
					<{else}>
					<div class="item_option_font"></div>
					<{/if}></div>
				  </label>
				  <{/section}><{* end  section name=item_data loop=$option_data_id *}>
                  <{if $product.model ==="moe_b_003" || $product.model ==="moe_b_004" || $product.model ==="moe_b_005" || $product.model ==="moe_b_006" || $product.model ==="moe_b_008" || $product.model ==="moe_b_009" || $product.model ==="moe_b_010" || $product.model ==="moe_b_011"}>
                      <p class="info_alert">本体カラーブラックは名入れ文字の識別が困難なため、名入れ/ロゴなしを推奨します。</p>
                  <{/if}>
                  <{if  $option_type === 'opt_crave' || $option_type === 'opt_name'}>
                      <p class="info_alert">オリジナルデザインのデータはAdobeのイラストレーターになります。<br>（データの送信先はオーダーの後にメールにてご案内）</p>
                      <{if $product.model ==="moe_b_003"}>
                          <a href="//moe-bag.jp/data/snazzy_name_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{elseif $product.model ==="moe_b_004"}>
                          <a href="//moe-bag.jp/data/coltish_name_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{elseif $product.model ==="moe_b_005" || $product.model ==="moe_b_006"}>
                          <a href="//moe-bag.jp/data/amico_bae_name_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{elseif $product.model ==="moe_b_007"}>
                          <a href="//moe-bag.jp/data/digne_name_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{elseif $product.model ==="moe_b_008"}>
                          <a href="//moe-bag.jp/data/beetle_name_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{elseif $product.model ==="moe_b_009"}>
                          <a href="//moe-bag.jp/data/raffine_name_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{elseif $product.model ==="moe_b_010"}>
                          <a href="//moe-bag.jp/data/vivante_name_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{elseif $product.model ==="moe_b_011"}>
                          <a href="//moe-bag.jp/data/foal_name_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{elseif $product.model ==="moe_s_002"}>
                          <a href="//moe-bag.jp/data/sentire_name_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{else}><{* moe_s_001,moe_b_001,moe_b_001_p,moe_b_002,moe_b_002_p *}>
                          <a href="//moe-bag.jp/data/banner_format_cs6.zip" style="display:inline-block;float:left;">オリジナルデザインの雛形はこちら >></a>
                      <{/if}>
                      <a href="<{$prod_inq_url}>">オーダー前のデザインチェック（無料）がおすすめ。お問い合わせはこちら  >></a>
                 <{/if }>
				</div>
			</div>
        <{/if}><{* end if $option[num].select_name （h5タグの設定）*}>
	<{/section}><{* end section name=num loop=$option *}>
	<{/if}><{* end if $product.model ==="moe_s_004" *}>
	<{/if}><{* end if !$option_output_mode *}>
    <{assign var="jsoption_tpl" value=$file_name|regex_replace:"/\/(.*?)\\.tpl/":""}>
    <{if $product.model ==="moe_b_003"}>
		<{include file="$jsoption_tpl/free53.tpl"}>
    <{elseif $product.model ==="moe_b_004" || $product.model ==="moe_b_007" || $product.model ==="moe_b_008"}>
		<{include file="$jsoption_tpl/free30.tpl"}>
	<{elseif  $product.model ==="moe_b_001_p_test"}>
		<{include file="$jsoption_tpl/free42.tpl"}>
	<{elseif $product.model ==="moe_b_005"}>
		<{include file="$jsoption_tpl/free33.tpl"}>
	<{elseif $bid_name ==="バッグ"}><{*  option1、option2の選択フォームを取得 *}>
		<{include file="$jsoption_tpl/free19.tpl"}>
	<{elseif $product.model ==="moe_s_004"}>
		<{include file="$jsoption_tpl/free20.tpl"}>
	<{/if}>
      <!--//////////商品オプション/////////--> 
      <!--//////////名入れ入力//////////--> 
      <{if $product.product_text_titles}>
      <div class="option_name-area"><{foreach from=$product.product_text_titles key=key item=val}>
        <{$val|escape}>：
        <input type="text" name="product_text[<{$key|escape}>]" value=""/>
        <span class="caution-txt">※未入力の場合はmoeのロゴ</span><{/foreach}></div>
      <{/if}>      		
      <!--//////////納期について//////////-->
<!--
      <{assign var="my_tpl_3" value=$file_name|regex_replace:"/\/(.*?)\\.tpl/":""}>
      <div class="product_option"><{if $bid_name ==="その他小物"}>
        	<{include file="$my_tpl_3/free9.tpl"}>
        <{else}>
        	<{include file="$my_tpl_3/free8.tpl"}>
        <{ /if }>
      </div>    
-->
<{/if}>
<!--オプション設定ここまで-->
<!--//////////カートここから//////////-->
      <{assign var="cart_tpl" value=$file_name|regex_replace:"/\/(.*?)\\.tpl/":""}>
      <div class="cart_wrap">
        <div class="cart_contents">
<!--          <div class="cart_header"><{if $sid_name ==="革プリント有り"}><span class="caution">プリント用のデザインデータが必要です</span><{/if}><span class="cart_item-name"><{$product.name}></span></div>
-->
          <{if $product.model != ""}>
          <div class="cart_row"><span class="cart_header cart_header-waribiki">型番</span><span class="cart_data cart_data-waribiki" itemprop="mpn"><{$product.model}></span></div>
          <{/if}>
          <{if $product.sales != ""}>
          <div class="cart_row" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
              <meta itemprop="url" content="<{$page_url}>">
              <{if $product.model !=="moe_b_012" && $product.model !=="moe_b_013"}><meta itemprop="priceCurrency" content="JPY"><{/if}>
              <{if $product.model !=="moe_b_012" && $product.model !=="moe_b_013"}><meta itemprop="itemCondition" content="NewCondition"><{/if}>
              <{if $product.model !=="moe_b_012" && $product.model !=="moe_b_013"}><meta itemprop="availability" content="InStock"><{/if}>
              <{if $product.model !=="moe_b_012" && $product.model !=="moe_b_013"}><meta itemprop="priceValidUntil" content="2030-12-31"><{/if}>
              <{if $waribiki > 0}><!-- 一般セールの場合 -->
                  <{if $product.model !=="moe_b_012" && $product.model !=="moe_b_013"}><meta itemprop="price" content="<{$price_regular}>"><{/if}>
                    <span class="cart_header cart_header-waribiki">販売価格</span> 
                    <span class="cart_data cart_data-waribiki"><s><{$product.price}></s>&rArr;<br/>
                    <strong class="price"><{$product.sales}></strong></span> 
              <{else}><{if $product.model !=="moe_b_012" && $product.model !=="moe_b_013"}><meta itemprop="price" content="<{$price_regular}>"><{/if}>
                  <{if $product.model ==="moe_b_003"}><span class="cart_header" style="display: block;">販売価格</span>
<span class="cart_data" style="display: block;"><strong class="price">○ｍｉｎｉ　　34,000円(税込37,400円)</strong><strong class="price" style="display: block;">○レギュラー　37,000円(税込40,700円)</strong></span><{elseif $product.model ==="moe_b_004"}><span class="cart_header" style="display: block;">販売価格</span>
<span class="cart_data" style="display: block;"><strong class="price">○ｍｉｎｉ　　33,000円(税込36,300円)</strong><strong class="price" style="display: block;">○レギュラー　36,000円(税込39,600円)</strong></span>
<{elseif $product.model ==="moe_b_007"}><span class="cart_header" style="display: block;">販売価格</span>
<span class="cart_data" style="display: block;"><strong class="price">○ｍｉｎｉ　　34,000円(税込37,400円)</strong><strong class="price" style="display: block;">○レギュラー　36,000円(税込39,600円)</strong></span><{elseif $product.model ==="moe_b_008"}><span class="cart_header" style="display: block;">販売価格</span>
<span class="cart_data" style="display: block;"><strong class="price">○ｍｉｎｉ　　34,000円(税込37,400円)</strong><strong class="price" style="display: block;">○レギュラー　36,000円(税込39,600円)</strong></span>
                      <{else}>
                      <span class="cart_header">販売価格</span>
                      <span class="cart_data">
                      <{if $members_login_flg === true && $product.discount_flg === true}><s><{$product.regular_price}></s><{/if}><!-- 通常販売価格 -->
                      <{if $waribiki > 0}><{/if}>
                      <strong class="price"><{$product.sales}></strong><!-- 販売価格 --> 
                      <{if $members_login_flg === true && $product.discount_flg === true}><{$product.discount_rate}>OFF!!<{/if}><!-- 割引率 -->
                      </span>
                  <{/if}>
              <{/if}>
          </div>
          <{/if}>
          <div class="cart_row"><span class="cart_header cart_header-waribiki">送料</span><span class="cart_data cart_data-waribiki"><{if $bid_name ==="その他小物"}><!--全国一律(税込330円)<br/>-->10,000円以上お買い上げの方は送料無料。<{else}>無料<{/if}></span></div>
          
          <!-- 売切れ時・休止時・ログイン限定購入商品は表示しない  --> 
          <{if $product.soldout_flg === 0 && $shop_stop_flg === false && $product.login_sale_flg === false }>
          <div class="cart_row cart_item-count"><span class="cart_header">購入数</span><span class="cart_data clearfix"><span class="custom_select-wrap">
            <select name="ul_product_num" class="custom_select" onchange="changeItemCount(this);"><option value="1" selected>1</option><!--<option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option>--></select>
            <span class="custom_select-btn"></span></span><span class="cart_item-unit"><{$product.unit}></span><input type="hidden" name="product_num" value="1"><!--/////商品の単位（１個、１枚など）/////--> 
            </span></div>
					     <script>
									function changeItemCount(obj){
										var idx = obj.selectedIndex;
										document.getElementsByName("product_num").value = obj.options[idx].value;
										//console.log(document.getElementsByName("product_num").value);
									}
					     </script>
					　　　　　　<p class="caution-txt">雨の日の使用は商品の変形や劣化につながるためご注意ください。
					     <{if $product.gift_ng_status=== null }><br>ギフトラッピングの指定はカートにてお願いします。（手数料500円）<{/if}></p>
          <{/if}></div>
        <!--///// cart_contentsここまで ////-->
		<div id="cart_sp"><{include file="$cart_tpl/free51.tpl"}></div>
        
        <div class="cart_action"><a href="<{$prod_inq_url}>" class="btn btn_color-beige btn_brown-border btn-m icons_mail-brown2" title="この商品について問い合わせる">この商品について問い合わせる&nbsp;>></a><a href="<{$sk_url}>" class="btn btn_brown-border btn-m icons_box" title="特定商取引法に基づく表記 (返品など)">特定商取引法に基づく表記&nbsp;>></a><span class="btn btn_orange-border btn-m icons_easypayment">分割でのお支払い支払いOK!</span>
		<figure><{rakuten_pay_banner type='logo1' size='big'}></figure>
<!--<div id="rakuten_sp_counter"><{rakuten_pay_point_parts}></div>-->
        <!--<figure><img loading="lazy" src="//moe-bag.jp/shop_data/images/img_kessai_card.gif" alt="Visa、Masterカード対応">
            <figcaption>Visa、Masterカード対応</figcaption>
          </figure>
        -->
        </div>
        <!--///// cart_actionここまで ////-->
		<div id="cart_pc"><{include file="$cart_tpl/free52.tpl"}></div>
		<a href="https://paypay.ne.jp/" style="display:block; margin-top: 3rem"><img loading="lazy" width="728" height="90" src="https://img14.shop-pro.jp/PA01305/529/etc/paypay_728-90.png?cmsp_timestamp=20200917201228" alt="PayPayでmoeのバッグをご注文"></a>
						<!--<a href="https://paypay.ne.jp/" style="display:block; margin-top: 3rem"><img loading="lazy" src="https://moe-bag.jp/shop_data/images/banner/6scr_728x90_red@2x.png" alt="PayPayでmoeのバッグをご注文"></a>-->
		<!--<a href="https://paypay.ne.jp/event/matsuri202210-paypay-jumbo/" style="display:block; margin-top: 3rem"><img loading="lazy" src="https://img14.shop-pro.jp/PA01305/529/etc/10PJ_728x90.png?cmsp_timestamp=20221017151449" alt="PayPayでmoeのバッグをご注文"></a>-->
        <div class="confirm_carinfo" style="margin-bottom: 2.5rem"><strong>商品ご購入時のご確認</strong>
          <ol>
            <li>moeの製品は受注生産のため、お客様都合による返品・交換はお受けしておりません。サイズやカラーで迷われた場合は、ご注文前にお気軽にご相談ください。</li>
            <li>革のキズ・色ムラ・シワ・血筋などは天然皮革の証です。製品の表面に現れる場合もありますがそのような部分の風合いも生かし仕上げております。</li>
            <li>摩擦・汗・雨などの環境や外的要因による色移りが生じる可能性があります。</li>
            <li>商品のカラーについては製造ロット毎や使用する部位での色味の濃淡やばらつき、モニタ画面の表示と実際の商品の色合いと異なって見える場合がございます。あらかじめご了承ください。</li>
            <li>オリジナルデザインの革プリント、レーザー刻印ご利用に関して、第三者の著作権・商標権・意匠権・肖像権、その他法的権利（以下、これらを併せて「知的財産権」といいます）の侵害がない旨ご確認ください。権利者と争いが生じた場合、当店は一切その責任は負わず、お客様がその責任と負担をもって解決するものとします。これらに関して注文の確定（ご入金・お支払い）により、お客様が同意していただいたものとさせていただきます。</li>
          </ol>
        </div>
      </div>
      <!--///// cart_wrapここまで ////-->

<!--//////////カートここまで//////////--> 
    </div>


    <!-- 商品の説明/他リンク --> 
    <!-- 商品の説明 --> 
    <!--//////商品の説明(カラーミーで設定する所)/////-->
    <div id="detail" class="product_description product_description"><{$product.explain}></div>
    <!--//////商品の説明(カラーミーで設定する所)ここまで/////-->
    <div id="product_option" class="product_option">
	  <!--<{assign var="my_tpl" value=$file_name|regex_replace:"/\/(.*?)\\.tpl/":""}>
   	  <{if $sid_name ==="革プリント有り"}>
        <{include file="$my_tpl/free11.tpl"}>
          <{if $product.model==="moe_b_001_p"}>
            <{include file="$my_tpl/free3.tpl"}>
          <{else}>
            <{include file="$my_tpl/free4.tpl"}>
          <{ /if }>      
        <{include file="$my_tpl/free5.tpl"}>
      <{elseif $sid_name ==="革プリントなし"}>
        <{include file="$my_tpl/free11.tpl"}>
        <{include file="$my_tpl/free5.tpl"}>
      <{else}>
          <{if $product.model==="moe_s_001" || $product.model==="moe_s_004"}>
            <{include file="$my_tpl/free5.tpl"}>
          <{elseif $product.model==="moe_s_002"}>
            <{include file="$my_tpl/free10.tpl"}>
          <{ /if }>
      <{ /if }>-->
    </div>
    <{$product.info}><!--//////hidden情報//////-->    
    <!--/////////////////--> 

    </div>
    <!--/////end add_cart///-->    
  </div>
</form>
<!--/////お客様の声/////-->
<{assign var="review_tpl" value=$file_name|regex_replace:"/\/(.*?)\\.tpl/":""}>
<{assign var="my_review_count" value= 0}>
<div id="review" class="product_description tab-content">
  <h2 >この商品についてのお客様の声</h2>
  <{if $product.model==="moe_b_001"}>
  <{assign var="my_review_count" value= 3}>
  <{include file="$review_tpl/free6.tpl"}>
  <{elseif $product.model==="moe_b_001_p"}>
  <{assign var="my_review_count" value= 1}>
  <{include file="$review_tpl/free38.tpl"}>
  <{elseif $product.model==="moe_b_002"}>
  <{assign var="my_review_count" value= 2}>
  <{include file="$review_tpl/free7.tpl"}>
  <{elseif $product.model==="moe_b_002_p"}>
  <{assign var="my_review_count" value= 1}>
  <{include file="$review_tpl/free39.tpl"}>
  <{elseif $product.model==="moe_b_005"}>
  <{assign var="my_review_count" value= 1}>
  <{include file="$review_tpl/free40.tpl"}>
  <{elseif $product.model==="moe_b_006"}>
  <{assign var="my_review_count" value= 1}>
  <{include file="$review_tpl/free43.tpl"}> 
  <{elseif $product.model==="moe_b_007"}>
  <{assign var="my_review_count" value= 1}>
  <{include file="$review_tpl/free48.tpl"}> 
  <{elseif $product.model==="moe_s_002"}>
  <{assign var="my_review_count" value= 1}>
  <{include file="$review_tpl/free12.tpl"}>
  <{ /if }>
  <{ if $review_item_num != "" }>
    <span itemprop="aggregateRating" itemtype="http://schema.org/AggregateRating" itemscope>
     <meta id="agg-review-count" itemprop="reviewCount" content="" />
     <meta id="agg-rating-value" itemprop="ratingValue" content="" />
     <meta itemprop="bestRating" content="5" />
     <meta itemprop="worstRating" content="1" />
    </span>
<script>
    (function(){
      var stars = [<{section name=rnum loop=$reviewlist}><{if $reviewlist[rnum].id==="859342"}>1<{else}><{$reviewlist[rnum].star}><{/if}>,<{/section}>];
      stars = stars.filter(function(s){ return !isNaN(s) && s > 0; });
      var phantom = <{$my_review_count}>;
      var ours = document.getElementById('agg-rating-value')
                 ? document.getElementById('agg-rating-value').closest('[itemprop="aggregateRating"]')
                 : null;
      // 自分以外のaggregateRatingを除去（重複対策）
      document.querySelectorAll('[itemprop="aggregateRating"]').forEach(function(el){
        if (el !== ours) { el.parentNode.removeChild(el); }
      });
      var total = stars.length + phantom;
      if (total > 0 && ours) {
        var sum = stars.reduce(function(a, b){ return a + b; }, 0) + 5 * phantom;
        var avg = Math.round((sum / total) * 10) / 10;
        document.getElementById('agg-rating-value').setAttribute('content', avg);
        document.getElementById('agg-review-count').setAttribute('content', total);
      } else if (ours) {
        ours.parentNode.removeChild(ours);
      }
    })();
    </script>
  <{ /if }>
  <a href="<{$review_send_url}>" class="btn btn_color-green btn_review alignright"><span class="icons_pen-white">お客様の声を投稿</span></a><{ if $review_item_num != "" }>
  
  <{ if $review_use_flg }> 
  <{assign var="m_num" value=10}> 
  <{section name=num loop=$reviewlist max=$m_num}>
  <div class="reviewlist" itemprop="review" itemtype="http://schema.org/Review" itemscope>
    <div class="reviewlist_datas">
      <div class="icon_star" style="margin-top: 0.3rem;" itemprop="reviewRating" itemtype="http://schema.org/Rating" itemscope>
				<{if $reviewlist[num].id==="859342"}><p style="background-image:url('https://secure.shop-pro.jp/img/star_01.png');" itemprop="ratingValue" content="1"></p><{else}><p style="background-image:url('https://secure.shop-pro.jp/img/star_0<{ $reviewlist[num].star }>.png');" itemprop="ratingValue" content="<{ $reviewlist[num].star }>"></p><{/if}>
      </div>
      <ul class="review_poster" itemprop="author" itemtype="http://schema.org/Person" itemscope>
        <!--<li> │ <{ $reviewlist[num].nickname }></li>-->
        <!--<li> │ <{ $reviewlist[num].nendai }></li>-->
        <li> │ <span itemprop="name"><{if $reviewlist[num].id==="859476"}>女性<{else}><{ $reviewlist[num].sex }><{/if}></span></li>
        <li> │ <span itemprop="datePublished"><{ $reviewlist[num].date }></span></li>
      </ul>
    </div>
    <div class="reviewlist_content">
      <div class="review_ttl"><{ $reviewlist[num].title }></div>
      <div class="review_img01" itemprop="description"><{ $reviewlist[num].comment }></div>
    </div>   
    <!-- ショップからの返信コメント--> 
    <{if $reviewlist[num].res_comment != ""}>
    <div class="shopcomment">
      <div class="shopcomment_ttl">ショップからのコメント</div>
      <{ $reviewlist[num].res_comment }></div>
    <{ /if }></div>
  <{/section}> 
  <{ /if }> 
  
  <{else}>
  <div class="reviewlist">
    <div class="reviewlist_content">
      <div class="review_img01">お客様の声はありません</div>
    </div>
  </div>
  <{ /if }></div>
<!--/////お客様の声ここまで/////--> 
<!--/////最近チェックした商品/////-->
<div class="item_list-wrap tab-content" id="checked_item">
  <h2>最近チェックした商品</h2>
  <{if $history_num != 0}>
  <div class="item_list"><{section name=num loop=$history max=9}>
    <div class="item_data-box"> 
      <!--割引率--> 
      <{assign var="price_regular" value=$history[num].teika|regex_replace:"/円.*|[^0-9]/":""}>
      <{assign var="price_orosi" value=$history[num].price|regex_replace:"/円.*|[^0-9]/":""}>
      <{math equation="round((1-('$price_orosi'/'$price_regular'))*100)" assign="ratio"}> 
      <!--割引率ここまで--> 
      <!-- 商品画像 -->
      <div class="item_thumbnail"><{if $history[num].img_url != ""}><a href="<{$history[num].link_url}>"><img loading="lazy" src="<{if $history[num].model ==="moe_b_004"}>https://img14.shop-pro.jp/PA01305/529/etc/coltish_mini_324x200.jpg?cmsp_timestamp=20210405195653<{elseif $history[num].model ==="moe_b_008"}>https://img14.shop-pro.jp/PA01305/529/etc/157019148_324x200.jpg?cmsp_timestamp=20210401215740<{elseif $history[num].model ==="moe_b_011"}>https://img14.shop-pro.jp/PA01305/529/etc_base64/Zm9hbF9ncmF5XzMyNHgyMDA.jpg?cmsp_timestamp=20240927225935<{else}><{$history[num].img_url}><{/if}>" class="<{if $history[num].model ==="moe_s_003"}>item_img2<{elseif $history[num].model ==="moe_b_003" || $history[num].model ==="moe_b_004" || $history[num].model ==="moe_b_005" || $history[num].model ==="moe_b_006" || $history[num].model ==="moe_b_007" || $history[num].model ==="moe_b_008" || $history[num].model ==="moe_b_009" || $history[num].model ==="moe_b_010" || $history[num].model ==="moe_b_011"}>item_img3<{else}>item_img<{/if}>"  width="323" height="200"/></a><{else}><a href="<{$history[num].link_url}>"><img src="//moe-bag.jp/wp/wp-content/themes/moe/images/common/thumbnail-logo.png" class="item_img-no" alt="No Image"/></a><{/if}>
        <{if $ratio > 0}><span class="news-diary news-circle"><{$ratio}>%0FF!</span><{/if}></div>
      <div class="item_detail-wrap">
        <p class="item_name"> 
          <!-- 商品名 --> 
          <{assign var="item_disp" value=$history[num].name}><a href="<{$history[num].link_url}>"><{$item_disp|truncate:41}></a></p>
        <p class="item_price"><{if $ratio > 0}><s><{$history[num].teika}></s>&rArr;<br/>
          <{/if}> 
          <!-- 通常販売価格 --> 
          <{if $members_login_flg === true && $history[num].discount_flg === true}><s><{$history[num].regular_price}></s><{/if}> 
          <!-- 販売価格 -->
          <{if $history[num].model ==="moe_b_012" || $history[num].model ==="moe_b_013"}>
               準備中
          <{else}>
          <{$history[num].price}>
          <{/if}>
          <{if $members_login_flg === true && $history[num].discount_flg === true}> 
          <!-- 割引率 --> 
          <{$history[num].discount_rate}>OFF!!
          <{/if}>
          <{if $history[num].soldout_flg === true}><div class="caution" style="text-align:center;">現在、販売休止中です</div><{/if}></p>
      </div>
    </div>
    <{/section}>
    <{if $history_num % 3 === 2}>
    <div class="item_data-box"></div>
    <{/if}></div>
  <{/if}></div>
<!--/////最近チェックした商品ここまで/////--> 

<{ else }>
<{if $product.hide_flg === true}> 
<!-- 該当商品はログインしないと閲覧できない時 --> 
この商品を閲覧するにはログインが必要です。
  <{else}> 
  <!-- 該当商品がないとき --> 
  現在、この商品は扱っておりません。
<{/if}>
<{ /if }> 
<script type="text/javascript">
 //Facebookのシェア数を取得
//access_token:'EAAQXvZBuZCVYUBABdsa4xtDD2WDO5qYmJqLWDj0PDC4spvth2gw7FSWZBaRo87TGl7KX2EEG3f3nGGlErQZBTtj6UZCBUIPLVS0bTRuxe3ybZC4VasCfROCeD46BzvMISCHRm5D20zLwJ8YV4SL3teFpMVLqsQbveJKpBC0XW9CIKJa7ufZAMecrq7Etyd2lmFpsZA7yBUPeFOlP2ltolcqJph26lCTb94byI5HLQvq0UQZDZD'
/*
function get_social_count_facebook(url, selecter) {
  jQuery.ajax({
    url:'https://graph.facebook.com/',
    dataType:'jsonp',
    data:{
      id:url,
			fields:'og_object{engagement}',
			access_token:'COLOR_ME_FACEBOOK_ACCESS_TOKEN'
    },
    success:function(res){
		if(res.og_object !== undefined){
			jQuery( selecter ).text(res.og_object.engagement.count);
		} else {
			jQuery( selecter ).text('0');
		}
    },
    error:function(){
      jQuery( selecter ).text('0');
    }
  });
}

get_social_count_facebook('https://shop.moe-bag.jp/?pid=<{$product.id}>', '.fb_count');
*/
//ポケットのストック数を取得
/*
function get_social_count_pocket(url, selcter) {
  jQuery.ajax({
    type: "get", dataType: "xml",
    url: "https://query.yahooapis.com/v1/public/yql",
    data: {
      q: "SELECT content FROM data.headers WHERE url='https://widgets.getpocket.com/v1/button?label=pocket&count=vertical&v=1&url=" + url + "' and ua='#Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36'",
      format: "xml",
      env: "https://datatables.org/alltables.env"
    },
    success: function (data) {
      var content = jQuery(data).find("content").text();
      var match = content.match(/<em id="cnt">(\d+)<\/em>/i);
      var count = (match != null) ? match[1] : 0;
 
      jQuery( selcter ).text(count);
    }
  });
}
*/
/////get_social_count_pocket('<{$page_url}>', '.pocket_count');
//はてなブックマークではてブ勝を取得
/*
function get_social_count_hatebu(url, selcter) {
  jQuery.ajax({
    url:'https://api.b.st-hatena.com/entry.count?callback=?',
    dataType:'jsonp',
    data:{
      url:url
    },
    success:function(res){
      jQuery( selcter ).text( res || 0 );
    },
    error:function(){
      jQuery( selcter ).text('0');
    }
  });
}

var hatebu_url = decodeURIComponent( '<{$page_url}>' );
*/
/////get_social_count_hatebu(hatebu_url, '.hatena_count');

//Twitterのシェア数を取得
/*
function get_social_count_twitter(url, selcter) {
  jQuery.ajax({
  url:"https://urls.api.twitter.com/1/urls/count.json",
  dataType:'jsonp',
  data:{
    url:url
  },
  success:function(res){
    jQuery( selcter ).text( res.count || 0 );
  },
  error:function(){
    jQuery( selcter ).text('0');
  }
  });
}
var tw_url = decodeURIComponent( '<{$page_url}>' );
get_social_count_twitter(tw_url, '.tw_count');
*/
</script>
<script type="text/javascript">
var imgHTTP ='https://moe-bag.jp/shop_data/images/item/sp/<{$product.id}>/';
	
$(function() {
  var ua = navigator.userAgent;
  if ((ua.indexOf('iPhone') > 0 || ua.indexOf('Android') > 0) && ua.indexOf('Mobile') > 0) {
    // スマートフォン用の記述
    $('#cart_sp').css({'display': 'block','width':'100%'});
	$('.disable_cartin.button_area').css({'margin-top': '0','margin-bottom':'1rem'});
	$('#rakuten_sp_counter').css({'display': 'block','width':'100%'});
    $('#cart_pc').css('display','none');
	  
  } else if (ua.indexOf('iPad') > 0 || ua.indexOf('Android') > 0) {
    // タブレット用の記述
    $('#cart_sp').css('display','none');
    $('#rakuten_sp_counter').css('display','none');
    $('#cart_pc').css({'display': 'block','width':'100%'});
  } else {
    // PC用の記述
    $('#cart_sp').css('display','none');
    $('#rakuten_sp_counter').css('display','none');
    $('#cart_pc').css({'display': 'block','width':'100%'});
  }

  // 置換の対象とするclass属性。
  var $elem = $('.zoom-tiny-image');
  // 画像を切り替えるウィンドウサイズ。
  var replaceWidth = 420;
	
  function imageSwitch() {
    // ウィンドウサイズを取得する。
    var windowWidth = parseInt($(window).width());
    
    if(windowWidth <= replaceWidth) {
	   //初期ビューの大画像
        $('#zoom_stage > img').attr('src', imgHTTP + '<{$product.id}>.jpg');
        var count = 0;
		$elem.each(function() {
            var $this = $(this);
			var imgfile = '<{$product.id}>';
			if(count != 0){
			   imgfile = imgfile + '_o' + count + '.jpg';
			} else {
			   imgfile = imgfile + '.jpg'; 
			}
			$this.attr('src', imgHTTP + imgfile);
			count++;

		});
    }
      
    if($('#item_img_info').length && typeof(img_info_list) != 'undefined'){
        let img_info = img_info_list[0];
        $('#item_img_info').fadeOut('fast', function() {
            $('#item_img_info').html(img_info).fadeIn();
        });
    }
  }
  imageSwitch();
	
	var regexp = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i;
	if(window.navigator.userAgent.search(regexp) !== -1){
		$('a.sp_floating-pagetop').fadeIn();
	}
});
	
/*
ga('require', 'linker'); 
ga('linker:autoLink', ['shop-pro.jp'], false, true);
*/
</script>

<{if $product.model ==="moe_b_004" || $product.model ==="moe_b_010" || $product.model ==="moe_b_011" || $product.model ==="moe_b_008" || $product.model ==="moe_b_009" || $product.model ==="moe_b_006" || $product.model ==="moe_b_005" || $product.model ==="moe_b_002" || $product.model ==="moe_b_001" || $product.model ==="moe_b_003" || $product.model ==="moe_b_007"}>
<script>
/* ===== スマホ用ライトボックス ===== */
(function($) {
    if (!window.matchMedia('(max-width: 420px)').matches){
        document.getElementById("info_lightbox").style.display="none";
        return;
    } else {
        document.getElementById("info_lightbox").style.display="block";
    }

  $('<style>')
    .text(
      '#sp-lightbox{display:none;position:fixed;top:0;left:0;width:100%;height:100%;z-index:9999;}' +
      '#sp-lightbox-overlay{position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.9);}' +
      '#sp-lightbox-content{position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);width:100%;text-align:center;}' +
      '#sp-lightbox-img-wrap{overflow:hidden;touch-action:none;}' +
      '#sp-lightbox-img{max-width:100%;max-height:80vh;object-fit:contain;display:block;margin:0 auto;transform-origin:center center;transition:transform 0.1s;}' +
      '#sp-lightbox-close{position:fixed;top:12px;right:16px;background:rgba(0,0,0,0.3);border:none;color:#fff;font-size:22px;cursor:pointer;z-index:10000;border-radius:50%;width:40px;height:40px;display:flex;align-items:center;justify-content:center;line-height:1;}' +
      '#sp-lightbox-prev,#sp-lightbox-next{position:fixed;top:50%;transform:translateY(-50%);background:rgba(0,0,0,0.3);border:none;color:#fff;font-size:24px;padding:12px 8px;cursor:pointer;z-index:10000;}' +
      '#sp-lightbox-prev{left:4px;}' +
      '#sp-lightbox-next{right:4px;}' +
      '#sp-lightbox-caption{color:#fff;font-size:0.8rem;text-align:center;padding:8px 16px;min-height:1.5em;}' +
      '#zoom_stage > img{cursor:zoom-in;}'
    )
    .appendTo('head');

  $('body').append(
    '<div id="sp-lightbox">' +
    '<div id="sp-lightbox-overlay"></div>' +
    '<div id="sp-lightbox-content">' +
    '<button id="sp-lightbox-close">&#10005;</button>' +
    '<div id="sp-lightbox-img-wrap"><img id="sp-lightbox-img" src="" alt="" /></div>' +
    '<div id="sp-lightbox-caption"></div>' +
    '<button id="sp-lightbox-prev">&#10094;</button>' +
    '<button id="sp-lightbox-next">&#10095;</button>' +
    '</div></div>'
  );

  var currentIndex = 0;
  var scale = 1;
  var lastScale = 1;
  var startDist = 0;
  var touchStartX = 0;
  var baseScale = 1.25;

  function getTouchDist(touches) {
    var dx = touches[1].clientX - touches[0].clientX;
    var dy = touches[1].clientY - touches[0].clientY;
    return Math.sqrt(dx * dx + dy * dy);
  }

  function collectImages() {
    var imgs = [];
    var mainSrc = $('#zoom_stage > img').attr('src');
    if (mainSrc) imgs.push(mainSrc.replace('/item/sp/', '/item/light_box/'));
    $('.zoom-tiny-image').each(function() {
      var src = $(this).attr('src');
      if (src) {
        src = src.replace('/item/sp/', '/item/light_box/');
        if (imgs.indexOf(src) === -1) imgs.push(src);
      }
    });
    return imgs;
  }

  function openLightbox(index) {
    var imgs = collectImages();
    if (!imgs.length) return;
    currentIndex = index || 0;
    resetZoom();　// ← ここでscale=1になる
    $('#sp-lightbox-img').attr('src', imgs[currentIndex]);
    $('#sp-lightbox-caption').html(typeof img_info_list !== 'undefined' && img_info_list[currentIndex] ? img_info_list[currentIndex] : '');
		scale = baseScale;
		lastScale = baseScale;
　　$('#sp-lightbox-img').css('transform', 'scale(' + scale + ')');
    if (imgs.length <= 1) {
      $('#sp-lightbox-prev, #sp-lightbox-next').hide();
    } else {
      $('#sp-lightbox-prev, #sp-lightbox-next').show();
    }
    $('#sp-lightbox').fadeIn(200);
    $('body').css('overflow', 'hidden');
  }

  function closeLightbox() {
    resetZoom();
    $('#sp-lightbox').fadeOut(200);
    $('body').css('overflow', '');
  }

  function showImage(index) {
    var imgs = collectImages();
    currentIndex = (index + imgs.length) % imgs.length;
    resetZoom();
    $('#sp-lightbox-img').attr('src', imgs[currentIndex]);
    $('#sp-lightbox-caption').html(typeof img_info_list !== 'undefined' && img_info_list[currentIndex] ? img_info_list[currentIndex] : '');
		scale = baseScale;
		lastScale = baseScale;
　　$('#sp-lightbox-img').css('transform', 'scale(' + scale + ')');
  }

  $(document).on('click', '#zoom_stage > img', function() { openLightbox(0); });
  // サムネイルタップでライトボックスを開く
  $(document).on('click', '.zoom-tiny-image', function() {
    var imgs = collectImages();
    var tappedSrc = $(this).attr('src').replace('/item/sp/', '/item/light_box/');
    var index = imgs.indexOf(tappedSrc);
    openLightbox(index !== -1 ? index : 0);
  });
  $(document).on('click', '#sp-lightbox-close, #sp-lightbox-overlay', function() { closeLightbox(); });
  $(document).on('click', '#sp-lightbox-prev', function(e) { e.stopPropagation(); showImage(currentIndex - 1); });
  $(document).on('click', '#sp-lightbox-next', function(e) { e.stopPropagation(); showImage(currentIndex + 1); });

  // ピンチズーム＋ドラッグ＋スワイプ
  var posX = 0, posY = 0;
  var lastPosX = 0, lastPosY = 0;
  var dragStartX = 0, dragStartY = 0;
  var isDragging = false;

  function applyTransform() {
    $('#sp-lightbox-img').css('transform', 'scale(' + scale + ') translate(' + posX + 'px, ' + posY + 'px)');
  }

  function resetZoom() {
    scale = 1; lastScale = 1;
    posX = 0; posY = 0; lastPosX = 0; lastPosY = 0;
    $('#sp-lightbox-img').css('transform', 'scale(1) translate(0px, 0px)');
  }

  $(document).on('touchstart', '#sp-lightbox-img-wrap', function(e) {
    var touches = e.originalEvent.touches;
    if (touches.length === 2) {
      startDist = getTouchDist(touches);
      lastScale = scale;
      lastPosX = posX; lastPosY = posY;
    } else if (touches.length === 1) {
      touchStartX = touches[0].clientX;
      dragStartX = touches[0].clientX;
      dragStartY = touches[0].clientY;
      isDragging = false;
    }
  });

  $(document).on('touchmove', '#sp-lightbox-img-wrap', function(e) {
    var touches = e.originalEvent.touches;
    if (touches.length === 2) {
      e.preventDefault();
      var dist = getTouchDist(touches);
      scale = Math.min(Math.max(lastScale * (dist / startDist), 1), 4);
      applyTransform();
    } else if (touches.length === 1 && scale > 1) {
      e.preventDefault();
      isDragging = true;
      var dx = (touches[0].clientX - dragStartX) / scale;
      var dy = (touches[0].clientY - dragStartY) / scale;
      posX = lastPosX + dx;
      posY = lastPosY + dy;
      applyTransform();
    }
  });

  $(document).on('touchend', '#sp-lightbox-img-wrap', function(e) {
    if (scale < 1) { resetZoom(); return; }
    lastPosX = posX; lastPosY = posY;
    if (scale <= baseScale && !isDragging && e.originalEvent.changedTouches.length === 1) {
      var diff = touchStartX - e.originalEvent.changedTouches[0].clientX;
      if (Math.abs(diff) > 50) {
        diff > 0 ? showImage(currentIndex + 1) : showImage(currentIndex - 1);
      }
    }
    isDragging = false;
  });

})(jQuery);
/* ===== //スマホ用ライトボックス ===== */
</script>
<{/if}>
<script>
/* ===== FAQ：常に1つだけ開く（アニメーション付き） ===== */
(function(){
  var box = document.getElementById('question');
  if (!box) return;
  var DURATION = 300;
  var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  function isOpen(ans){
    var t = ans.parentNode.querySelector('.qa_toggle');
    return t && t.checked;
  }
  function openPanel(ans){
    if (reduce) { ans.style.maxHeight = 'none'; return; }
    ans.style.maxHeight = ans.scrollHeight + 'px';
    var done = function(e){
      if (e.propertyName !== 'max-height') return;
      ans.removeEventListener('transitionend', done);
      if (isOpen(ans)) ans.style.maxHeight = 'none'; /* 画面回転などで文字の折り返しが変わっても切れないように */
    };
    ans.addEventListener('transitionend', done);
  }
  function closePanel(ans){
    ans.style.maxHeight = ans.scrollHeight + 'px'; /* 現在の高さを確定してから */
    ans.offsetHeight;                               /* 再計算させて */
    ans.style.maxHeight = '0px';                    /* 0へアニメーション */
  }
  /* アニメーション中、タップした質問の表示位置を固定する */
  function keepPosition(label, before){
    var start = performance.now();
    (function step(now){
      var diff = label.getBoundingClientRect().top - before;
      if (diff) window.scrollBy(0, diff);
      if (!reduce && now - start < DURATION + 80) requestAnimationFrame(step);
    })(start);
  }

  box.addEventListener('change', function(e){
    var t = e.target;
    if (!t.classList || !t.classList.contains('qa_toggle')) return;
    var ans = t.parentNode.querySelector('.qa_a');

    /* 開いている質問をタップして閉じた場合 */
    if (!t.checked) { if (ans) closePanel(ans); return; }

    var label = t.nextElementSibling; /* .qa_q */
    var before = label.getBoundingClientRect().top;
    var closedOther = false;
    box.querySelectorAll('.qa_toggle:checked').forEach(function(el){
      if (el === t) return;
      var a = el.parentNode.querySelector('.qa_a');
      if (a) closePanel(a);
      el.checked = false;
      closedOther = true;
    });
    if (ans) openPanel(ans);
    if (closedOther) keepPosition(label, before);

    /* 計測（任意） */
    if (typeof moeTrack === 'function') {
      moeTrack('faq_open', {pid: moePid(), product_name: moeName(), question: label.textContent.trim().slice(0, 100)});
    }
  });
})();
</script>
