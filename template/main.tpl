<{if $tpl_name == "top"}>
<link rel="preload" as="image" href="https://img14.shop-pro.jp/PA01305/529/etc_base64/c2hvcF90b3A.jpg?cmsp_timestamp=20250625133911">
<{/if}>
<!-- Google Tag Manager (noscript) -->
<!--<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WKHV8W"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>-->
<!-- End Google Tag Manager (noscript) -->
<script>
	<!--//停止 2019/01/27
		/*
        window._pt_lt = new Date().getTime();
        window._pt_sp_2 = [];
        _pt_sp_2.push('setAccount,18a8ce22');
        var _protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        (function() {
            var atag = document.createElement('script'); atag.type = 'text/javascript'; atag.async = true;
            atag.src = _protocol + 'js.ptengine.jp/pta.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(atag, s);
        })();
				*/
-->
</script>
<!--add 20250625 start -->
<link rel="preload" href="https://shop.moe-bag.jp/js/cart.js" as="script" />
<link rel="preload" href="https://shop.moe-bag.jp/js/async_cart_in.js" as="script" />
<link rel="preload" href="https://shop.moe-bag.jp/js/product_stock.js" as="script" />
<link rel="preload" href="https://shop.moe-bag.jp/js/js.cookie.js" as="script" />
<link rel="preload" href="https://shop.moe-bag.jp/js/favorite_button.js" as="script" />
<!--<script src="https://shop.moe-bag.jp/js/cart.js" defer></script>-->
<!--<script src="https://shop.moe-bag.jp/js/async_cart_in.js" defer></script>-->
<!--<script src="https://shop.moe-bag.jp/js/product_stock.js" defer></script>-->
<!--<script src="https://shop.moe-bag.jp/js/js.cookie.js" defer></script>-->
<!--<script src="https://shop.moe-bag.jp/js/favorite_button.js" defer></script>-->
<!--end 20250625 start -->
<!--*********************************************************
ショップ共通
@ author:	m.uramoto
@ date:	2015/11/08
**********************************************************-->
<{assign var="ua" value=$smarty.server.HTTP_USER_AGENT|lower}>
<div class="drawer drawer--right">
<!-- ハンバーガーボタン -->
<button type="button" class="drawer-toggle drawer-hamburger hidden-xl-up">
    <span class="sr-only">toggle navigation</span>
    <span class="drawer-hamburger-icon"></span>
</button>

<div id="page">
  <div class="site_header" role="banner" id="top">
    <div class="header-message hidden-lg-down">
    	 <{if $tpl_name == "product"}>
         	<p class="container">姫路レザーの革良い鞄、かわいいかばん<!--姫路レザーの素晴らしさを伝えてくれるすべてのクリエイターのために-->｜moe - 革のバッグ</p>
         <{else}>
        	<h1 class="container">姫路レザーの革良い鞄、かわいいかばん<!--姫路レザーの素晴らしさを伝えてくれるすべてのクリエイターのために-->｜moe - 革のバッグ</h1>
        <{/if}> 
    </div>
    <div class="site_branding container"> <a href="https://moe-bag.jp/" rel="home" title="moe-革のバッグ" class="logo hidden-lg-down"></a>
      <div class="main_shopnavi hidden-lg-down" role="navigation">
        <div class="main_navigation-sub">
          <ul class="clearfix">
            <li><a href="<{$view_inq_url}>" title="お問合わせ" class="icons-mail"></a></li>
            <li><a href="<{$view_cart_url}>" title="カートを見る" class="icons-cart"></a></li>
          </ul>
        </div>
        
        <!--スタムメニューを表示させる場所に下記を追加-->
<ul class="main-nav pull-right" id="main-nav" style="min-width:45.5rem; min-height:fit-content;"><li ><a title="home" href="https://moe-bag.jp/">home</a></li><li class="dropdown"><a title="about us" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">about us <span class="caret"></span></a><ul role="menu" class=" dropdown-menu"><li><a title="ごあいさつ" href="https://moe-bag.jp/about_us/owner">ごあいさつ</a></li><li><a title="革のPCバッグである理由" href="https://moe-bag.jp/about_us/bag">革のPCバッグである理由</a></li><li><a title="柔らかく、かわいい、品の良さにこだわった革の色揃え" href="https://moe-bag.jp/about_us/leather_color">柔らかく、かわいい、品の良さにこだわった革の色揃え</a></li><li><a title="裏地にまでこだわりたい魅力の革のバッグ" href="https://moe-bag.jp/about_us/lining">裏地にまでこだわりたい魅力の革のバッグ</a></li><li><a title="このサイトについて" href="https://moe-bag.jp/about_us/site">このサイトについて</a></li></ul></li><li class="dropdown"><a title="service" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">service <span class="caret"></span></a><ul role="menu" class=" dropdown-menu"><li class="  active"><a title="ご注文・納期・返品・修理について" href="https://moe-bag.jp/service/info_service">ご注文・納期・返品・修理について</a></li><li><a title="レーザー刻印について" href="https://moe-bag.jp/service/crave">レーザー刻印について</a></li><li><a title="革プリントについて" href="https://moe-bag.jp/service/print">革プリントについて</a></li><li><a title="オンリーワンバッグサービスについて" href="https://moe-bag.jp/service/only_one">オンリーワンバッグサービスについて</a></li></ul></li><li><a title="bag care" href="https://moe-bag.jp/bag_care">bag care</a></li><li class="dropdown"><a title="leather" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">leather <span class="caret"></span></a><ul role="menu" class=" dropdown-menu"><li><a title="姫路革の伝統「白鞣し」" href="https://moe-bag.jp/leather/white_leather">姫路革の伝統「白鞣し」</a></li><li><a title="革ができるまで" href="https://moe-bag.jp/leather/process">革ができるまで</a></li><li><a title="姫路の革の歴史" href="https://moe-bag.jp/leather/history">姫路の革の歴史</a></li><li><a title="革職人のコラム" href="https://moe-bag.jp/tanner/">革職人のコラム</a></li></ul></li><li><a title="interview" href="https://moe-bag.jp/interview/">interview</a></li><li><a title="blog" href="https://moe-bag.jp/category/blog/">blog</a></li><li><a title="blog" href="https://shop.moe-bag.jp/">online store</a></li></ul>
      </div>
      <!-- #site-navigation -->
      <div class="shop_info-banner hidden-lg-down"><span class="shop_info-tel">079-280-7160</span><span class="shop_info-hours">受付時間：平日10:00~17:00</span></div>
      <!--/////shop top のときだけ/////-->
      <{if $tpl_name == "top"}>
      <img loading="lazy" width="970" height="228" src="https://moe-bag.jp/wp/wp-content/themes/moe/images/home/main_image-catch.png" alt="求めたのは物ではなく自分らしさ。心豊かで創造的な世界。" class="main_image-catch"/> 
      <img loading="lazy" width="930" height="158" src="https://moe-bag.jp/wp/wp-content/themes/moe/images/home/main_image-catch-sub.png" alt="タンナー（皮革職人）とmoeがアクティブでクリエイティブなあなたに、より自分らしい男女を問わないスタイルをご提案します。" class="main_image-catch-sub"/>
      <{/if}>
      <!--////shop top のときだけここまで /////-->
    </div>
    <!-- .site-branding --> 
    <div class="sp-header hidden-xl-up"><a href="https://moe-bag.jp/" rel="home" title="moe-革のバッグ" class="logo"></a></div>
    
    <!--/////shop top のときだけ/////-->
    <{if $tpl_name == "top"}>
    <div class="main_image-border"></div>
    <div style="width:100%;background-image:url(https://img14.shop-pro.jp/PA01305/529/etc_base64/c2hvcF90b3A.jpg?cmsp_timestamp=20250625133911)" class="main-image shop_mainImage-border-bottoom"/>
    <{/if}>
    <!--////shop top のときだけここまで /////-->
  </div>
  <!-- #masthead --> 
  <!--//////////スクロールしてでてくるナビここから//////////-->
 <div class="site_scroll-header hidden-lg-down"><div class="site_branding container"> <a href="https://moe-bag.jp/" rel="home" title="moe-革のバッグ" class="logo2"></a><div class="main_shopnavi2" role="navigation"><div class="main_navigation-sub2"><ul class="clearfix"><li><a href="<{$view_inq_url}>" title="お問合わせ" class="icons-mail2"></a></li><li><a href="<{$view_cart_url}>" title="カートを見る" class="icons-cart2"></a></li></ul></div><!--スタムメニューを表示させる場所に下記を追加--><ul class="main-nav pull-right" id="main-nav2"><!--jQuery add menu --></ul></div><!-- #site-navigation --> <div class="shop_info-banner2 hidden-lg-down"><span class="shop_info-tel">079-280-7160</span><span class="shop_info-hours">受付時間：平日10:00~17:00</span></div></div><!-- .site-branding --> </div>
  <!--//////////スクロールしてでてくるナビここまで//////////-->
  <div id="main-frame" class="container">
    <div id="content" class="site-content"> 
      <div id="primary" style="min-height:fit-content;" class="content-area"<{if $tpl_name === "product"}> itemscope itemtype="http://schema.org/Product"<{/if}>>
        <div id="main" class="site-main" role="main">
          <div class="shop_wrap">
            <{if $ua|regex_replace:'/.*android.*/i':'android' eq 'android' || $ua|regex_replace:'/.*iphone.*/i':'iphone' eq 'iphone' || $ua|regex_replace:'/.*ipad.*/i':'ipad' eq 'ipad' || $ua|regex_replace:'/.*ipod.*/i':'ipod' eq 'ipod'}>
            
            	<{if $tpl_name == "top"}>
                
               <!--////// スマートフォンの場合だけローカルナビ/////////-->
                <div class="shop_item-navi">
                	<a href="#top_contents" title="information"><span>information</span</a>
                	<a href="#recommend_item" title="おすすめ商品"><span>おすすめ商品</span></a>
                	<a href="#sales_item" title="人気商品"><span>人気商品</span></a>
                    <a href="#shop_service" title="こだわりオンリーワンバッグサービス"><span>こだわりオンリーワンバッグサービス</span></a>
                </div>
                <{/if}>
            <{/if}>
          
            <{include file = $file_name}>
          </div>
          <!-- #post-## --> 

        </div>
        <!-- #main --> 
      </div>
      <!-- #primary -->
      
      <div id="secondary"class="widget-area hidden-lg-down" role="complementary">
      	<!--//////search/////-->
        <div class="widget widget_shop_items">
          <h2 class="widget-title">search</h2>
 			<form action="<{$product_search_url}>" method="GET" id="search" class="shop_search-form clearfix">
                <{$product_search_mode}>
                <div class="custom_select-wrap">
                    <select name="cid" class="custom_select">
                      <option value="">全ての商品から</option>
                      <{section name=num loop=$category}>
                      <option value="<{$category[num].id}>"<{if $search_category == $category[num].name }> selected="selected"<{/if}>><{$category[num].name}></option>
                      <{/section}>
                    </select>
                    <span class="custom_select-btn"></span>
                </div>
                <div class="shop_search">
                    <input type="text" name="keyword" class="shop_search">
                    <input type="submit" value="検索" class="shop_search"/>                
                </div>

           </form>
        </div>
        <!--//////searchここまで/////-->    
        <!--//////バナー0/////-->
<!--//////////
         <div class="widget widget_sp_image">
          <a href="https://award.shop-pro.jp/2017?utf8=%E2%9C%93&keyword=moe&_ga=1.61359468.1545261387.1487642153" title="moeがカラーミショップ大賞2017にノミネートされました"><img loading="lazy" src="https://img14.shop-pro.jp/PA01305/529/etc/colorme_taisho_2017_300x300.png?cmsp_timestamp=20170322224621" /></a></div>
//////////-->
        <!--//////バナー0ここまで/////-->         
     	<!--//////商品カテゴリ/////-->
	     <div id="sub_navi-2" class="widget widget_shop_items">
          <h2 class="widget-title">category</h2>
          <ul>
            <li><a href="<{ $home_url }>?mode=srh&cid=&keyword=">全ての商品</a></li>
            <{section name=num loop=$category}>
              <li><a href="<{$category[num].link_url}>"><{$category[num].name}></a></li>
            <{/section}>
          </ul>
        </div>     
     	<!--//////商品カテゴリここまで/////-->
        <!--//////商品タグ/////-->
        <div class="widget widget_shop_items">
          <h2 class="widget-title">item spec</h2>
          <ul class="item_spec">
            <{section name=num loop=$group}>
              <li><a href="<{$group[num].link_url}>"><{$group[num].name}></a></li>
            <{/section}>
          </ul>
        </div> 
        <!--//////商品タグここまで/////-->
        <!--//////バナー1/////-->
         <div class="widget widget_sp_image">
          <a href="https://moe-bag.jp/interview" title="moeを応援してくれる人たちに仕事やライフスタイル、革やPCバッグへの思いを語っていただきました。"><img loading="lazy" width="300" height="300" src="https://moe-bag.jp/wp/wp-content/uploads/2016/01/interview_300x300.jpg" /></a></div> 
        <!--//////バナー1ここまで/////-->         
        <!--//////コンテンツ/////-->
        <div id="nav_menu-2" class="widget widget_nav_menu">
          <h2 class="widget-title">contents</h2>
          <div class="menu-side_custom_1-container">
            <ul id="menu-side_custom_1" class="menu">
               <li id="menu-item-1497" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1497"><a href="https://moe-bag.jp/bag">革とバッグ、そしてPCバッグ</a></li>
              <li id="menu-item-1497" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1497"><a href="https://moe-bag.jp/story">brand story</a></li>
              <li id="menu-item-1498" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1498"><a href="https://moe-bag.jp/interview">interview</a></li>
              <li id="menu-item-1499" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1499"><a href="https://moe-bag.jp/tanner">革職人のコラム</a></li>
            </ul>
          </div>
        </div>
        <!--//////コンテンツここまで/////-->
        
        <!--//////最近の投稿/////-->
        <div id="rss" class="widget widget_shop_items shop_rss_list">
          <h2 class="widget-title">news</h2>
          <ul class="article"></ul>
        </div>
        <!--//////最近の投稿/////-->

        <div id="widget_sp_image-3" class="widget widget_sp_image">
          <a href="https://moe-bag.jp/story" title="moeという名前もなかった頃から始まるブランドの誕生とこれからの物語"><img loading="lazy" width="300" height="300" src="https://moe-bag.jp/wp/wp-content/uploads/2015/11/story_300x300.jpg" alt=""/></a></div>
      </div>
      <!-- #secondary --> 
    </div>
    <!-- #content --> 
  </div>
  <!-- #main-frame -->
  <div class="local_navi-wrap hidden-lg-down">
    <div class="local_navi container" role="navigation">
      <ul class="local_navi-main pull-left">
         <{if $tpl_name == "product"}>
           	<li><a href="#detail" title="商品について">商品について</a></li>
            <li><{if $bid_name ==="バッグ" && $sid_name ==="革プリントなし"}><a href="#question" title="よくあるご質問秘話" > Q&A </a><{else}><a href="#history" title="開発秘話">開発秘話</a><{/if}></li>
            <li><a href="#data" title="サイズ・仕様">サイズ・仕様</a></li>
            <{if $bid_name =="その他小物"}>
            	 <{ if $review_item_num != ""  || $product.model==="moe_s_002" }><li><a href="#review" title="レビュー">レビュー</a></li><{/if}>
            <{else}>
            	<li><a href="#review" title="レビュー">レビュー</a></li>
            <{/if}>
            <{if $history_num != 0}><li><a href="#checked_item" title="最近チェックした商品">最近チェックした商品</a></li><{/if}>
         <{/if}>
      </ul>
 <!--/////SNS button/////-->     
<{assign var="tmp_url" value=$smarty.server.HTTP_HOST|cat:''|cat:$smarty.server.REQUEST_URI|escape:'url'}>
<{if isset($smarty.server.HTTPS) && ($smarty.server.HTTPS eq "on")}>
	<{assign var="page_url" value="https://"|cat:''|cat:$tmp_url}>
<{else}>
	<{assign var="page_url" value="https://"|cat:''|cat:$tmp_url}>
<{/if}>

<{if $tpl_name == "top"}>
	<{assign var="p_name" value=$shop_name}>
<{elseif $tpl_name == "product"}>
	<{assign var="p_name" value=$product.name}>   
<{elseif $tpl_name == "product_list"}>
	<{assign var="p_name" value='商品一覧'}>
<{elseif $tpl_name == "product_srh"}>
   <{assign var="p_name" value='検索結果'}> 
<{elseif $tpl_name == "shopkeeper"}>
   <{assign var="p_name" value='特定商取引法に基づく表記'}>
<{elseif $tpl_name == "privacy"}>
   <{assign var="p_name" value='プライバシーポリシーページ'}>  
<{/if}>
      
      <ul class="local_navi-sub pull-right" role="complementary">
      	<{if $tpl_name == "product"}><li class="icon-cartin"><a href="#order_stage" title="カートに入れる" id="pc_footer">cart in</a></li><{/if}>
        <li><a href="https://www.facebook.com/sharer.php?src=bm&u=<{$page_url}>&t=<{$p_name}>" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" class="icon-facebook" title="facebook"></a></li>
        <li>
<script >
<!--
document.write('<a href="https://twitter.com/intent/tweet?url=' + encodeURIComponent(location.href) + '&text=' + encodeURIComponent("<{$p_name|strip_tags}>") + '&tw_p=tweetbutton" onclick="javascript:window.open(this.href, \'\', \'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600\');return false;"  target="_blank" class="icon-twitter" title="twitter"></a>');  
// -->
</script>            
        </li>
        <li><a href="https://instagram.com/moe_storyboard?ref=badge" class="icon-instagram" title="instagram"></a></li>
        <li><a href="#top" class="icon-pagetop"　title="ページトップ"></a></li>
      </ul>
<!--/////SNS buttonここまで/////-->   
    </div>
  </div>
  
  
    <!--/////レスポンシブ用SNSメニュー/////-->
	<div class="sns_navi-wrap clearfix hidden-xl-up">
         <ul class="clearfix">
            <li><a href="https://www.facebook.com/sharer.php?src=bm&u=<{$page_url}>&t=<{$p_name}>" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" class="icon-facebook" title="facebook"></a></li>
        	<li>
<script >
<!--
document.write('<a href="https://twitter.com/intent/tweet?url=' + encodeURIComponent(location.href) + '&text=' + encodeURIComponent("<{$p_name|strip_tags}>") + '&tw_p=tweetbutton" onclick="javascript:window.open(this.href, \'\', \'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600\');return false;"  target="_blank" class="icon-twitter" title="twitter"></a>');  
// -->
</script>            
       		</li>
            <li><a href="https://instagram.com/moe_storyboard?ref=badge" class="icon-instagram" title="instagram"></a></li>
            <li><!--<a href="#top" class="icon-pagetop"　title="ページトップ"></a>--></li>
        </ul>
	</div>
     <!--/////レスポンシブ用SNSメニューここまで/////-->  
  
  
  <div class="site_footer" role="contentinfo">
    <div class="site_info container">
      <div class="footer-message hidden-lg-down">姫路レザーの革良い鞄、かわいいかばん<!--姫路レザーの素晴らしさを伝えてくれるすべてのクリエイターのために-->｜moe - 革のバッグ</div>
      <div class="site_branding hidden-lg-down"> <a href="https://moe-bag.jp/" rel="home" title="moe-革のバッグ" class="logo logo_footer"></a>
        <address>
        <p>〒671-0256 姫路市花田町高木295-22</p>
        <p>TEL 079-280-7160 FAX 079-284-3321</p>
        <p>受付　平日10時&#12316;17時</p>
        </address>
      </div>
      <!-- .site-branding -->
      <div class="site_info-sub"> <small>Copyright &copy;  2015 moe All Rights Reserved.</small>
        <div class="site_info-subnavi hidden-lg-down" role="navigation">
        <ul class="clearfix">
          <li><a href="https://shop.moe-bag.jp/?mode=f2" title="サイトマップ">site map</a></li>
          <li><a href="https://moe-bag.jp/feed" title="RSS">RSS</a></li>
          <li><a href="<{$sk_url}>" title="特定商取引法に基づく表記">特定商取引法に基づく表記</a></li>
          <li><a href="<{$privacy_url}>" title="プライバシーポリシー">プライバシーポリシー</a></li>
          <li><a href="<{$view_myaccount_url}>" title="プマイアカウント">マイアカウント</a></li>
        </ul>
      </div>
      <!-- #site-navigation --> 
    </div>
  </div>
  <!-- .site-info --> 
</div>
<!-- .site-footer -->
</div>
<!-- #page -->
<nav class="drawer-nav"><div class="menu-%e3%83%ac%e3%82%b9%e3%83%9d%e3%83%b3%e3%82%b7%e3%83%96%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc-container" style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);"><ul class="drawer-menu" id="responsive-nav"><li><a href="<{$view_cart_url}>">カートをみる</a></li><li id="drawer-search" class=""><form action="<{$product_search_url}>" method="GET" id="search-drawer" class="shop_search-form clearfix"><{$product_search_mode}><div class="custom_select-wrap"><input type="text" name="keyword" class="" placeholder="キーワード検索" style="width: 100%"><!--<select name="cid" class="custom_select"><option value="">全ての商品から</option><{section name=num loop=$category}> <option value="<{$category[num].id}>"<{if $search_category == $category[num].name }> selected="selected"<{/if}>><{$category[num].name}></option><{/section}></select><span class="custom_select-btn"></span>--></div><div class="shop_search"><!--<input type="text" name="keyword" class="shop_search">--><input type="submit" value="検索" class="shop_search"/></div></form><span class="drawer-title">item spec</span><ul class="sub-menu"><{section name=num loop=$group}><li><a href="<{$group[num].link_url}>"><{$group[num].name}></a></li><{/section}></ul></li><li><a href="https://moe-bag.jp/">home</a></li><li><a href="https://shop.moe-bag.jp/">online store</a></li><li class="menu-item-has-children"><a href="https://moe-bag.jp/service">service</a><ul class="sub-menu"><li><a href="https://moe-bag.jp/service/info_service">ご注文・納期・返品・修理について</a></li><li><a href="https://moe-bag.jp/service/crave">レーザー刻印について</a></li><li><a href="https://moe-bag.jp/service/print">革プリントについて</a></li><li><a href="https://moe-bag.jp/service/only_one">オンリーワンバッグサービスについて</a></li></ul></li><li><a href="https://moe-bag.jp/about_us">about us</a><ul class="sub-menu"><li><a href="https://moe-bag.jp/about_us/owner">ごあいさつ</a></li><li><a href="https://moe-bag.jp/about_us/bag">革のPCバッグである理由</a></li><li class="current-page_item current_page_item"><a href="https://moe-bag.jp/about_us/leather_color">柔らかく、かわいい、品の良さにこだわった革の色揃え</a></li><li><a href="https://moe-bag.jp/about_us/lining">裏地にまでこだわりたい魅力の革のバッグ</a></li><li><a href="https://moe-bag.jp/about_us/site">このサイトについて</a></li></ul></li><li><a href="https://moe-bag.jp/bag_care">bag care</a></li><li class="menu-item-has-children "><a href="https://moe-bag.jp/leather">leather</a><ul class="sub-menu"><li><a href="https://moe-bag.jp/leather/history">姫路の革の歴史</a></li><li><a href="https://moe-bag.jp/leather/white_leather">姫路革の伝統「白鞣し」</a></li><li><a href="https://moe-bag.jp/leather/process">革ができるまで</a></li></ul></li><li class=" "><a href="https://moe-bag.jp/bag/">革とバッグ、そしてPCバッグ</a></li><li class=" "><a href="https://moe-bag.jp/interview/">interview</a></li><li class=" "><a href="https://moe-bag.jp/story">brand story</a></li><li class=" "><a href="https://moe-bag.jp/tanner">革職人のコラム</a></li><li class=" "><a href="https://moe-bag.jp/category/blog/">blog</a></li><li><a href="https://moe-bag.jp/contact">contact</a></li><li class=" "><a href="https://shop.moe-bag.jp/?mode=privacy">プライバシーポリシー</a></li><li class=" "><a href="https://shop.moe-bag.jp/?mode=sk">特商取引法に基づく表記</a></li><li><a href="https://moe-bag.jp/sitemap">サイトマップ</a></li></ul></div></nav>
<{if $tpl_name === "product"}>
<!--<a href="#order_stage" class="sp_floating-pagetop icon-sp_cart hidden-xl-up" title="カートに入れる" id="sp_float"></a>-->
<a href="#order_stage" class="sp_floating-pagetop icon-sp_cart hidden-xl-up" title="カートに入れる" id="sp_float" style="display: block;width: calc(100% - 140px) !important;border-radius: 5px;border-color: #eb5a24;text-decoration: none;" data-id="tab_cart"><span class="float_cart_btn" style="display: block;margin-left: 3em;margin-right: 2.7rem;line-height: 44px;background-color: #eb5a24;color: #FFFFFF !important;background-clip: content-box;text-align: center;text-decoration: none;font-size:1.2rem">ご注文はこちら</span></a>
<{/if}> 
<!--/////レスポンシブ用ページトップ/////-->
<a href="#top" class="sp_floating-pagetop icon-pagetop hidden-xl-up"　title="ページトップ"></a>
<!--/////レスポンシブ用ページトップここまで/////-->
</div>
<!--<link rel='preload' as='style' id='open-sans-css'  href='https://fonts.googleapis.com/css?family=Open+Sans%3A300italic%2C400italic%2C600italic%2C300%2C400%2C600&#038;subset=latin%2Clatin-ext' type='text/css' media='all' />-->
<!--<link rel='preload' as='style' id='moe-style-css2' href='//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css' media='all' />-->
<script type='text/javascript' src='//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js' defer></script>
<script type='text/javascript' src='//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha/js/bootstrap.min.js' defer></script>
<script type='text/javascript' src='//moe-bag.jp/wp/wp-content/themes/moe/js/jquery.dotdotdot.min.js' defer></script>
<script src="//moe-bag.jp/wp/wp-content/themes/moe/js/jquery.moe-shop.custom.js" defer></script>
<script >
$(function(){
	$('link[as = "style"]').attr('rel','stylesheet');
	<{if $tpl_name != "product"}>
	var pc_menu = $('ul#main-nav').html();
	$('ul#main-nav2').html(pc_menu);
	<{/if}>
	/*
	* フッター固定と解除。
	* 外部ファイルは動かない
	*/
	var switchHeaderH = $(".site_header").height();
	var switchFooter = $(".local_navi-wrap");	
	var switchFooterH = $(".local_navi-wrap").height();
	var switchPointH = $(".site_footer").height();
	var switchPoint = $(".site_footer").offset().top; 
	
	var switchPoint = $(".site_footer").offset().top -switchPointH - switchFooterH -switchHeaderH;
	//console.log( "switchPoint/" + switchPoint);
	var isFooterFixed = false;
	
	var exsScroll = 0;
	var scrollPos;
	var changePos = 0;
	$(window).scroll(function () {
		scrollPos = $(window).scrollTop();
		var distance = Math.abs( scrollPos -  exsScroll);
		var scrollHeight = $(document).height();
		var scrollPosition = $(window).height() + scrollPos;
		if ((scrollHeight - scrollPosition) / scrollHeight === 0) {
			// when scroll to bottom of the page
			changePos = scrollPos;
			isFooterFixed = false;
			switchFooter.css({"position":"relative"});
			switchPoint = changePos -switchPointH - switchFooterH;
		} if(scrollPos >= 500 &&　scrollPos < switchPoint){
			if(!isFooterFixed){
				isFooterFixed = true;
				if(switchFooter.css("position") == "relative"){
					switchFooter.css({"position":"fixed"});
				} else {
					switchFooter.slideDown();	
				}
			}		
		} else if(scrollPos < 500){
			isFooterFixed = false;
			switchFooter.slideUp();
		} else {
			isFooterFixed = false;
			switchFooter.css({"position":"relative"});
		}
		exsScroll = scrollPos;
	});
	//meta setting
	var current_url = window.location.href ;
	if(current_url.indexOf('mode=srh') >= 0){
		$('head').append('<link rel="canonical" href="https://shop.moe-bag.jp/?mode=srh&cid=&keyword="/>');
		/*$('head').append('<meta name="robots" content="noindex"/>');*/
	} else if(current_url.indexOf('pid=') > 0){
		<{if $tpl_name == "product"}>
		$('head').append('<link rel="canonical" href="https://shop.moe-bag.jp/?pid=<{$product.id}>"/>');
		<{/if}> 
	} else {
		<{if $tpl_name == "top"}>
			$('head').append('<link rel="canonical" href="https://shop.moe-bag.jp"/>');
		<{elseif $smarty.get.mode == 'grp' || $smarty.get.mode == 'cate'}>
			$('head').append('<link rel="canonical" href="https://shop.moe-bag.jp/<{if $sid_name != ""}><{$sid_link}><{else}><{$bid_link}><{/if}>"/>');
		<{else}>
			$('head').append('<link rel="canonical" href="' + current_url + '"/>');
		<{/if}> 	
	}

});

</script>


<script src="//cdnjs.cloudflare.com/ajax/libs/iScroll/5.1.3/iscroll.min.js" defer charset="UTF-8"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/drawer/3.1.0/js/drawer.min.js" defer charset="UTF-8"></script>

<{if ($ua|regex_replace:'/.*android.*/i':'android' eq 'android' || $ua|regex_replace:'/.*iphone.*/i':'iphone' eq 'iphone' || $ua|regex_replace:'/.*ipad.*/i':'ipad' eq 'ipad' || $ua|regex_replace:'/.*ipod.*/i':'ipod' eq 'ipod') || ( $tpl_name != "product")}>

<script >
/*
* スクロールした時に固定用ナビに切り替え
* bodyタグ直前だとページ途中で再読み込みした時などに始動しない
*/
var isFixed = false;	//false scroll用Navi未固定 true scroll用Navi固定
$win = $(window); 
<{if $tpl_name == "top"}>
$target = $(".site-content"); //scroll切り替えポイント
<{elseif $tpl_name == "product"}>
$target = $(".product_images"); //scroll切り替えポイント
<{else}>
$target = $(".footstamp"); //scroll切り替えポイント
<{/if}>
$switchHeader = $(".site_scroll-header"); //固定用Navi
var scrollPos = $target.offset().top; 
//スクロール位置を取得しながらナビ制御
$win.on("scroll", function () {
	if ($win.scrollTop() > scrollPos) {　//scroll位置が替えポイントの上にある場合
		if ( isFixed === false ){
			$switchHeader.slideDown();
			isFixed = true;
			//レスポンシブ、スマフォで固定配置のページの戻るボタンの制御
			if($('.hidden-xl-up').css('display') == 'block'){
				$('a.sp_floating-pagetop').fadeIn();
			}				
		}
	} else {
		if ( isFixed === true ){　//scroll位置が替えポイント下にある場合
			$switchHeader.slideUp();　
			isFixed = false;
			//レスポンシブ、スマフォで固定配置のページの戻るボタンの制御
			if($('.hidden-xl-up').css('display') == 'block'){
				
				$('a.sp_floating-pagetop').fadeOut();
			}					
		}
	}
});
$win.trigger("scroll");
</script>
<{/if}>	


<script >
$(function(){
	<{if $tpl_name != "product"}>
	/**
	* ローカルナビ生成
	*/
	$(".section").each(function(){
		var id = $(this).attr("id");
		if(id != undefined){
			var label = $(this).find("h2").text();
			if(label == ""){
				label = $(this).find("h3").text();
			}
			$('ul.local_navi-main').append('<li><a href="#' + id + '">' + label + '</a></li>');	
		}
	});
	<{/if}>	
	
	
	
	/*PCブラウザかそれ以外の判定*/
	<{if $ua|regex_replace:'/.*android.*/i':'android' eq 'android' || $ua|regex_replace:'/.*iphone.*/i':'iphone' eq 'iphone' || $ua|regex_replace:'/.*ipad.*/i':'ipad' eq 'ipad' || $ua|regex_replace:'/.*ipod.*/i':'ipod' eq 'ipod'}>
	
	<{if $tpl_name == "top"}>
		var currentTab ="#top_contents";	//タブ切り替え用初期値（スマフォ、タブレット）
		//PC以外（スマートフォン）
		$('#recommend_item').css({"display":"none"});
		$('#sales_item').css({"display":"none"});
		$('#shop_service').css({"display":"none"});
	<{elseif $tpl_name == "product"}>
		var currentTab ="#detail";	//タブ切り替え用初期値（スマフォ、タブレット）
		//PC以外（スマートフォン）
		$('#history').css({"display":"none"});
		$('#data').css({"display":"none"});
		//$('#cart_in').css({"display":"none"});
		$('#product_option').css({"display":"none"});
		$('#review').css({"display":"none"});
		<{if $history_num != 0}>$('#checked_item').css({"display":"none"});<{/if}>
	<{/if}>
	
	
		
	/*
	* スムーズスクロール
	*/
	jQuery('a[href^=#]').click(function() {
		var href= jQuery(this).attr("href");
		if(href != "#top"){
			if(currentTab == "#cart_in"){
				currentTab = href;	
				$(currentTab).fadeIn(
					'fast',
					function(){
						if(currentTab == "#detail"){
							$("#item_contents").css({"display":"block"});
						}						
						scrollExe(currentTab);
					}	
				);	
			} else {
				$(currentTab).fadeOut('fast', function() {
					if(currentTab == "#detail"){
						$("#item_contents").css({"display":"none"});
					}
					currentTab = href;	
					$(currentTab).fadeIn(
						'fast',
						function(){
							if(currentTab == "#detail"){
								$("#item_contents").css({"display":"block"});
							}
							scrollExe(currentTab);			
						}	
					);		
				});	
			}
		} else {
			scrollExe(href);	
		}
		return false;
   	});	
	
	
	<{else}>	
	//通常PC
	
	/*
	* スムーズスクロール
	*/
	jQuery('a[href^=#]').click(function() {
		var href= jQuery(this).attr("href");
		scrollExe(href);
		return false;
   	});	
	
	
	<{/if}>	
	
	<{if $tpl_name == "product"}>
	/*停止 2026/04/18→再稼働*/
		jQuery('.btn-order-info').click(function() {
			scrollExe("#order_stage");
			return false;
		});	
   
	<{/if}>
	/**
	* スムーズスクロール実行
	* @param scrollTarget リンクタグのhref属性
	*/
	function scrollExe(scrollTarget){
	// スクロールの速度
		var adjustHeight =$(".site_scroll-header").height();
		if(adjustHeight > 0 ) adjustHeight = adjustHeight + 10;
		var speed = 900;
		var target = jQuery(scrollTarget == "#" || scrollTarget == "" ? 'html' : scrollTarget);
		var position = target.offset().top;
		jQuery('body,html').animate({scrollTop:position -adjustHeight }, speed, 'swing');		
	};
   
   //文字のオーバーフロー対策
	$(".item_description").dotdotdot();
	
    
	 $(".drawer").drawer();
	 
	 $('.drawer').on('drawer.opened', function(){
		isDrawer_open = true;
		$('.sp_floating-pagetop').fadeOut();
  		//console.log("開きました");
	});
	$('.drawer').on('drawer.closed', function(){
		isDrawer_open = false;
		$('.sp_floating-pagetop').fadeIn();
 	 	//console.log("閉じました");
	});	
	
	
	$('#search-drawer .shop_search').click(function (event) {
		$('form#search-drawer').submit();
     });
	
	//tensoバナーチェック
/*	
	$(".banner_tenso").each(function(i, elem) {
		if($(elem).height() <= 1){
			$(elem).css({"display":"none"});
		}
	});
*/	
});	
</script>  
<{if $tpl_name == "product"}>
    
<{if $product.model ==="moe_b_008" || $product.model==="moe_b_005" || $product.model==="moe_b_009" || $product.model==="moe_b_011"}>
<!--
<script>
const tabContainer = document.querySelector('.shop_item-navi');
const tabMenuItems = tabContainer.querySelectorAll('.shop_item-navi a');
const tabContents = document.querySelectorAll('.tab-content');
console.log(tabMenuItems);
console.log(tabContents);
tabMenuItems.forEach(tabMenuItem => {
  		tabMenuItem.addEventListener('click', () => {
    		tabMenuItems.forEach(item => {
      		item.classList.remove('selected');
    		});
    		tabMenuItem.classList.add('selected');

    		tabContents.forEach(tabContent => {
					console.log(tabContent);
      		tabContent.classList.remove('selected');
    		});
				
    		document.getElementById(tabMenuItem.dataset.id).classList.add('selected');
  		});
});
const btn_tab_cart = document.querySelectorAll('div.shop_item-navi a.btn-primary')[0];
const sp_float_btn = document.getElementById('sp_float');
const pc_footer_btn = document.getElementById('pc_footer');
sp_float_btn.addEventListener('click', function() {
	btn_tab_cart.click();
});
pc_footer_btn.addEventListener('click', function() {
	btn_tab_cart.click();
});

</script>
<style>
.tab-content {
  display: none;
}

.tab-content.selected {
  display: block;
}    
</style>
-->
<{/if}>
<{/if}>
<style>
/*Drawer menu Custom*/
.drawer-hamburger{margin-right: 5px;top:5px;padding: 18px .875rem 30px; background-color:rgba(216,190,151,0.88);box-shadow:none;}
.drawer-hamburger:hover{box-shadow:none; border:none;background-color:rgba(216,190,151,0.88);}
.drawer-hamburger:active{box-shadow:none; border:none;background-color:rgba(216,190,151,0.88);}
.drawer-hamburger-icon, .drawer-hamburger-icon:after, .drawer-hamburger-icon:before {height: 3px;border-radius: 3px;  background-color: #6A3A2F; }
button{background:none; text-shadow:none;}
.drawer-nav {
    position: fixed;
    z-index: 997;
    top: 0;
    overflow: hidden;
    width: 16.25rem;
    height: 100%;
    color: #FFF;
    background-color: #6B3C30;
}
  #gmo_CMSPbar{display:none;}
  <{if $ua|regex_replace:'/.*android.*/i':'android' eq 'android' || $ua|regex_replace:'/.*iphone.*/i':'iphone' eq 'iphone' || $ua|regex_replace:'/.*ipad.*/i':'ipad' eq 'ipad' || $ua|regex_replace:'/.*ipod.*/i':'ipod' eq 'ipod'}>
  .btn-order-info{display: none;}
  <{/if}>	
</style>
	
<{if $tpl_name == "top"}>
<!--
<link rel="stylesheet" type="text/css" href="//moe-bag.jp/wp/wp-content/themes/moe/assets/css/slick-theme.css"/>
<link rel="stylesheet" type="text/css" href="//moe-bag.jp/wp/wp-content/themes/moe/assets/css/slick.css"/>
<script src="//moe-bag.jp/wp/wp-content/themes/moe/js/slick.min.js" defer></script> 
-->
<link rel="preload" as="style" href="//moe-bag.jp/wp/wp-content/themes/moe/assets/css/slick-theme.css" onload="this.onload=null;this.rel='stylesheet'">
<link rel="preload" as="style" href="//moe-bag.jp/wp/wp-content/themes/moe/assets/css/slick.css" onload="this.onload=null;this.rel='stylesheet'">
<noscript>
  <link rel="stylesheet" href="//moe-bag.jp/wp/wp-content/themes/moe/assets/css/slick-theme">
  <link rel="stylesheet" href="//moe-bag.jp/wp/wp-content/themes/moe/assets/css/slick.css">
</noscript>
<link rel="preload" href="//moe-bag.jp/wp/wp-content/themes/moe/js/slick.min.js" as="script" />
<script src="//moe-bag.jp/wp/wp-content/themes/moe/js/slick.min.js" defer></script>
<script >
$(function () {
	//カルーセル
	var slickSetting = {
		dots: true,
		infinite: false,
		speed: 300,
		slidesToShow: 3,
		slidesToScroll: 1,
		responsive: [
			{
				breakpoint: 501,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1
				}
			}
		]
	};
	$('.collection_list').slick(slickSetting);
});
</script> 

<{/if}>
<!--buyee-->
<script id="gc-script" type="text/javascript" charset="utf-8" src="https://connect.gdxtag.com/c06a00bbcaffefb5b8ad674006c4e85d1dd01bcd27be3715ad881a0a8865d770/main.js" defer></script>


<{if $tpl_name === "product"}>
<{assign var="price_regular" value=$product.price|regex_replace:"/円.*|[^0-9]/":""}>
<script>
document.addEventListener('DOMContentLoaded', function() {
	document.querySelectorAll('.cart_btn').forEach(function(btn) {
		btn.addEventListener('click', function() {
			fbq('track', 'AddToCart', {
        content_ids: ['<{$product.id}>'],
        content_type: 'product',
        value: <{$price_regular}>,
        currency: 'JPY'
			});
		});
	});
});
    
//buyee
var lastFire = 0;
window.addEventListener('message', function(e) {
    if (e.origin !== 'https://connect.buyee.jp') return;

    let d = e.data || {};
    if (d.type !== 'ga_send' || !d.data) return;
    if (d.data.action !== 'bc_pr_step2_cart_addtocart') return;

    if (typeof fbq !== 'function') return;

    // 二重発火ガード
    var now = Date.now();
    if (now - lastFire < 2000) return;
    lastFire = now;
    
    fbq('track', 'AddToCart', {
        content_ids: ['<{$product.id}>'],
        content_type: 'product',
        value: <{$price_regular}>,
        currency: 'JPY'
    });
});
</script>
<!-- Buyee Connect tracking (gtag direct) 2026-10-04 -->
<script>
(function () {
  var GA_ID = 'G-141H8C5HLV';
  var EVENTS = ['bc_pr_step2_cart_addtocart', 'bc_pr_step2_cart_buy'];
  var DEBUG = location.search.indexOf('bc_debug=1') > -1;
  var lastSent = {};

  function getPid() {
    var m = location.search.match(/[?&]pid=(\d+)/);
    return m ? m[1] : '(not set)';
  }

  window.addEventListener('message', function (e) {
    if (e.origin !== 'https://connect.buyee.jp') return;

    var d = e.data || {};
    if (DEBUG) console.log('[bc_debug]', d);
    if (d.type !== 'ga_send' || !d.data) return;

    var name = d.data.action;
    if (EVENTS.indexOf(name) === -1) return;

    // 同一イベントの連続送信を2秒間ブロック
    var now = Date.now();
    if (lastSent[name] && now - lastSent[name] < 2000) return;
    lastSent[name] = now;

    var params = {
      send_to: GA_ID,
      pid: getPid(),
      page_location: location.href
    };
    if (DEBUG) params.debug_mode = true;

    if (typeof window.gtag === 'function') {
      window.gtag('event', name, params);
    }
    if (DEBUG) console.log('[bc_debug] sent', name, params);
  }, false);
})();
</script>
<{if ($bid_name === "バッグ" && $sid_name === "革プリントなし") || $product.model==="moe_s_001"}>
<script>
    const link = document.createElement('link');
    link.rel = 'stylesheet';
    link.href = 'https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;1,300&family=Noto+Serif+JP:wght@300;400&display=swap'; // 外部CSS
    document.head.appendChild(link);

    let banner_target = $('div.product_description-summary h2:nth-of-type(4)');
    if (banner_target.length) {
      let bannerHtml = '<div class="grain-banner-wrap">'
        + '<a href="https://moe-bag.jp/tanner/grain" class="grain-banner">'
        + '<div class="grain-banner-overlay"></div>'
        + '<div class="grain-banner-inner">'
        + '<div class="grain-banner-top">'
        + '<div class="grain-banner-tag">MATERIAL ― 姫路レザー</div>'
        + '<div class="grain-banner-deco">革</div>'
        + '</div>'
        + '<div class="grain-banner-title">使うほどに、自分だけの革になる姫路レザー</div>'
        + '<div class="grain-banner-sub">日々表情を変える姫路レザー。手の温もりが重なり、革本来の艶と深みへと育っていく――それが、あなただけの物語です。</div>'
        + '<div class="grain-banner-cta">革の経年変化について <span class="grain-banner-arrow">→</span></div>'
        + '</div>'
        + '</a>'
        + '</div>';
      banner_target.before(bannerHtml);
    }
</script>
<!--///GA4ページ内リンク計測-->
<script>
window.dataLayer = window.dataLayer || [];
function moeTrack(name, params){
  params = params || {};
  params.send_to = 'G-141H8C5HLV';   /* AW-1017193349 への送信を防ぐ */
  if (typeof gtag === 'function') {
    gtag('event', name, params);
  } else {
    window.dataLayer.push(['event', name, params]);
  }
}

function moePid(){
  var m = document.location.search.match(/[?&]pid=(\d+)/);
  return m ? m[1] : '(not set)';
}
    
function moeName(){
  var h = document.querySelector('h1');
  if (h && h.textContent) { return h.textContent.replace(/\s+/g,' ').trim(); }
  return document.title || '(not set)';
}
    
</script>
<!--////名入れ書体ダイアログ-->
<div id="dialog_font_style">
<p><strong><span style="color: #993300;">○ ゴシック体</span></strong></p>
<figure><img src="https://moe-bag.jp/wp/wp-content/uploads/2018/07/font_gothic_728x110.gif" alt="線の幅が均等で安定感のあるゴシック体" width="728" height="110" /><figcaption>縦横の太さが均等。力強く安定感があるシンプルな書体</figcaption></figure>
<p><strong><span style="color: #993300;">○ 明朝体</span></strong></p>
<figure><img src="https://moe-bag.jp/wp/wp-content/uploads/2018/07/font_mincho_728x110.gif" alt="縦線に比べ横線が細いのが特徴。厳格で堅いイメージ" width="728" height="110" /><figcaption>縦線に比べ横線が細いのが特徴。厳格で堅いイメージ</figcaption></figure>
<p><strong><span style="color: #993300;">○ 筆記体</span></strong></p>
<figure><img src="https://moe-bag.jp/wp/wp-content/uploads/2018/07/font_shellround_728x110.gif" alt="線幅に強弱があり優雅。高級感や品格のある書体" width="728" height="110" /><figcaption>線幅に強弱があり優雅。高級感や品格のある書体</figcaption></figure>
<p><strong><span style="color: #993300;">○ 手書き風</span></strong></p>
<figure><img src="https://moe-bag.jp/wp/wp-content/uploads/2018/07/font_chalkboard_728x110.gif" alt="親しみがあり柔らかく、かわいいイメージの書体" width="728" height="110" /><figcaption>親しみがあり柔らかく、かわいいイメージの書体</figcaption></figure>
</div>
 <style>
/* ===== 名入れ書体モーダル ===== */
.moe-fm-overlay{
  position:fixed; top:0; left:0; right:0; bottom:0;
  background:rgba(0,0,0,.6);
  z-index:99999;
  display:none;
  padding:16px;
  -webkit-overflow-scrolling:touch;
}
.moe-fm-overlay.is-open{ display:flex; align-items:center; justify-content:center; }
.moe-fm-panel{
  background:#fff; border-radius:6px;
  width:100%; max-width:760px; max-height:90vh;
  display:flex; flex-direction:column;
  box-shadow:0 8px 32px rgba(0,0,0,.3);
}
.moe-fm-head{
  display:flex; align-items:center; justify-content:space-between;
  padding:14px 16px; border-bottom:1px solid #e5e0d8;
  background:#f5f1ea; border-radius:6px 6px 0 0;
  flex-shrink:0;
}
.moe-fm-title{ margin:0; font-size:16px; font-weight:bold; color:#4a3b2a; }
.moe-fm-close{
  -webkit-appearance:none; appearance:none;
  background:none; border:none; cursor:pointer;
  font-size:26px; line-height:1; color:#7a6a58;
  padding:4px 10px; margin:0;
}
.moe-fm-close:hover{ color:#993300; }
.moe-fm-body{ padding:16px; overflow-y:auto; -webkit-overflow-scrolling:touch; }
.moe-fm-body img{ max-width:100%; height:auto; display:block; }
.moe-fm-body figure{ margin:0 0 20px; }
.moe-fm-body figcaption{ font-size:13px; color:#666; margin-top:6px; line-height:1.6; }
.moe-fm-body p{ margin:0 0 8px; }
.moe-fm-foot{
  padding:12px 16px; border-top:1px solid #e5e0d8;
  text-align:center; flex-shrink:0;
}
.moe-fm-foot .moe-fm-close-txt{
  display:inline-block; padding:10px 28px;
  background:#7a6a58; color:#fff; border:none; border-radius:4px;
  font-size:14px; cursor:pointer;
}
/* モーダル表示中はフロートのカートボタンを隠す（★セレクタは実物に合わせて要調整） */
body.moe-fm-lock .float_cart_btn{ display:none !important; }
@media screen and (max-width:767px){
  .moe-fm-overlay{ padding:0; }
  .moe-fm-panel{ max-width:100%; max-height:100%; height:100%; border-radius:0; }
  .moe-fm-head{ border-radius:0; }
}
</style>

<script>
(function(){
  'use strict';

  var TRIGGER_SEL = '.js-font-modal';
  var TRIGGER_TEXT = '書体のアルファベット一覧はこちら';
  var CONTENT_ID = 'dialog_font_style';

  function ready(fn){
    if(document.readyState !== 'loading'){ fn(); }
    else { document.addEventListener('DOMContentLoaded', fn); }
  }

  ready(function(){

    var content = document.getElementById(CONTENT_ID);
    if(!content){ return; }

    /* --- モーダル外枠を body 直下に生成（フォームの外に出すため必須） --- */
    var overlay = document.createElement('div');
    overlay.className = 'moe-fm-overlay';
    overlay.setAttribute('role','dialog');
    overlay.setAttribute('aria-modal','true');
    overlay.setAttribute('aria-labelledby','moe-fm-title');
    overlay.innerHTML =
      '<div class="moe-fm-panel">' +
        '<div class="moe-fm-head">' +
          '<h2 class="moe-fm-title" id="moe-fm-title">名入れ書体のアルファベット一覧</h2>' +
          '<button type="button" class="moe-fm-close" aria-label="閉じる">&times;</button>' +
        '</div>' +
        '<div class="moe-fm-body"></div>' +
        '<div class="moe-fm-foot">' +
          '<button type="button" class="moe-fm-close-txt">閉じる</button>' +
        '</div>' +
      '</div>';
    document.body.appendChild(overlay);

    /* 元の位置から中身を移動。フォーム内にあっても body 直下へ退避される */
    var body = overlay.querySelector('.moe-fm-body');
    content.style.display = '';
    body.appendChild(content);

    var panel    = overlay.querySelector('.moe-fm-panel');
    var btnX     = overlay.querySelector('.moe-fm-close');
    var btnTxt   = overlay.querySelector('.moe-fm-close-txt');
    var lastFocus = null;
    var scrollY   = 0;

    function getPid(){
      var m = location.search.match(/[?&]pid=(\d+)/);
      return m ? m[1] : '';
    }
    function getName(){
      var h = document.querySelector('h1');
      return (h && h.textContent.trim()) || document.title || '';
    }

    function open(trigger){
      lastFocus = trigger || document.activeElement;

      scrollY = window.pageYOffset;
      document.body.classList.add('moe-fm-lock');
      document.body.style.position = 'fixed';
      document.body.style.top   = (-scrollY) + 'px';
      document.body.style.width = '100%';

      overlay.classList.add('is-open');
      body.scrollTop = 0;
      btnX.focus();

      moeTrack('font_modal_open', {
        pid: getPid(),
        product_name: getName(),
        link_label: '書体のアルファベット一覧'
      });
    }

    function close(){
      overlay.classList.remove('is-open');

      document.body.classList.remove('moe-fm-lock');
      document.body.style.position = '';
      document.body.style.top      = '';
      document.body.style.width    = '';
      window.scrollTo(0, scrollY);

      if(lastFocus && lastFocus.focus){ lastFocus.focus(); }
    }

    /* --- トリガー：class 優先、なければリンク文言で拾う --- */
    var triggers = [].slice.call(document.querySelectorAll(TRIGGER_SEL));
    if(triggers.length === 0){
      [].forEach.call(document.getElementsByTagName('a'), function(a){
        if(a.textContent.indexOf(TRIGGER_TEXT) !== -1){ triggers.push(a); }
      });
    }
    triggers.forEach(function(a){
      a.addEventListener('click', function(e){
        e.preventDefault();
        open(a);
      });
    });

    /* --- close --- */
    btnX.addEventListener('click', close);
    btnTxt.addEventListener('click', close);
    overlay.addEventListener('click', function(e){
      if(e.target === overlay){ close(); }
    });
    document.addEventListener('keydown', function(e){
      if(!overlay.classList.contains('is-open')){ return; }
      if(e.key === 'Escape' || e.keyCode === 27){ close(); return; }
      if(e.key === 'Tab' || e.keyCode === 9){
        var f = panel.querySelectorAll('button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])');
        if(!f.length){ return; }
        var first = f[0], last = f[f.length - 1];
        if(e.shiftKey && document.activeElement === first){ e.preventDefault(); last.focus(); }
        else if(!e.shiftKey && document.activeElement === last){ e.preventDefault(); first.focus(); }
      }
    });
  });
})();
</script>
<!-- 商品ページナビクリック計測-->
<script>
(function(){
  'use strict';

  var NAV_SEL   = 'div.shop_item-navi a';      // 既存ボタンナビ
  var FLOAT_SEL = '.float_cart_btn';    // フロート「ご注文はこちら」

  function ready(fn){
    if(document.readyState !== 'loading'){ fn(); }
    else { document.addEventListener('DOMContentLoaded', fn); }
  }
  function label(el){
    var t = (el.textContent || '').replace(/\s+/g,' ').trim();
    return t || el.getAttribute('href') || '(no text)';
  }
  function send(name, el){
    moeTrack(name, {
      pid: moePid(),
      product_name: moeName(),
      link_label: label(el)
    });
  }

  ready(function(){
    [].forEach.call(document.querySelectorAll(NAV_SEL), function(a){
      a.addEventListener('click', function(){ send('anchor_nav_click', a); });
    });
    [].forEach.call(document.querySelectorAll(FLOAT_SEL), function(el){
      el.addEventListener('click', function(){ send('float_cart_click', el); });
    });
  });
    
})();
</script>
<{/if}>
<{/if}>

<{if $tpl_name == "product_list"}>
<!--///グループページのクリック計測-->
<script>
(function () {
  var m = location.search.match(/gid=(\d+)/);
  if (!m) return;
  var gid = m[1];
  document.addEventListener('click', function (e) {
    var a = e.target.closest && e.target.closest('a[href*="pid="]');
    if (!a) return;
    var p = a.getAttribute('href').match(/pid=(\d+)/);
    gtag('event', 'grp_item_click', {
      send_to: 'G-141H8C5HLV',
      group_id: gid,
      item_id: p ? p[1] : ''
    });
  }, false);
})();
</script>
<{/if}>
    
<{if $tpl_name == "top"}>
<!--///トップページのクリック計測-->
<script>
(function () {
  var lastKey = '', lastTime = 0;
  document.addEventListener('click', function (e) {
    var a = e.target.closest && e.target.closest('a[href*="mode=grp"]');
    if (!a) return;
    var m = a.getAttribute('href').match(/gid=(\d+)/);
    if (!m) return;

    var sec = a.closest('#moe-usecase-section') ? 'usecase'
            : a.closest('#moe-size-section')    ? 'size'
            : a.closest('#moe-style-section')   ? 'style'
            : a.closest('#secondary')           ? 'sidebar'
            : a.closest('.drawer-nav')          ? 'drawer'
            : a.closest('#box_news')            ? 'news'
            : 'other';

    /* 調査用: other のときは親要素を3階層まで記録 */
    if (sec === 'other') {
      var p = a.parentElement, path = [];
      while (p && path.length < 3) {
        path.push(p.id ? '#' + p.id
          : (p.className && typeof p.className === 'string') ? '.' + p.className.split(' ')[0]
          : p.tagName.toLowerCase());
        p = p.parentElement;
      }
      sec = ('other:' + path.join('<')).slice(0, 100);
    }

    /* 連続クリックの二重送信を防ぐ（同じリンクを1秒以内） */
    var key = sec + ':' + m[1], now = Date.now();
    if (key === lastKey && now - lastTime < 1000) return;
    lastKey = key; lastTime = now;

    gtag('event', sec === 'usecase' ? 'usecase_tile_click' : 'top_group_click', {
      send_to: 'G-141H8C5HLV',
      group_id: m[1],
      section: sec
    });
  }, false);
})();
</script>
 <{/if}>
<script>
(function () {
  try {
    if (!/[?&]mode=srh/.test(location.search)) return;
    var m = location.search.match(/[?&]keyword=([^&]*)/);
    if (!m || !m[1]) return;
    var s = m[1].replace(/\+/g, ' ');
    var bytes = [];
    for (var i = 0; i < s.length; i++) {
      if (s.charAt(i) === '%' && i + 2 < s.length) {
        bytes.push(parseInt(s.substr(i + 1, 2), 16));
        i += 2;
      } else {
        bytes.push(s.charCodeAt(i));
      }
    }
    var term = new TextDecoder('euc-jp').decode(new Uint8Array(bytes)).trim();
    if (!term) return;
    window.dataLayer = window.dataLayer || [];
    function g() { dataLayer.push(arguments); }
    g('event', 'view_search_results', { search_term: term });
  } catch (e) {}
})();
</script>
</body>
</html>
