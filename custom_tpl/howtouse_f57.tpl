<!-- ==========================================================
 新規フリーページ「何が入る？どう使う？」（全バッグ共通・1ページで管理）
 - 型番（$product.model）で中身を切り替え。該当しない商品は何も出力しない
 - 内容は各商品の「サイズ・仕様」とFAQ（商品説明 expl）から転記。数値はすべて概寸
 - 「サイズ・仕様を詳しく見る」は既存の nav_item_check と同じ #data / js-size-link を使用
   計測は size_spec_link_click（link_label を「何が入る_詳しく見る」にして既存リンクと区別）
========================================================== -->
<{if $product.model==="moe_b_011"}><{assign var="mo_fit" value="foal"}>
<{elseif $product.model==="moe_b_009"}><{assign var="mo_fit" value="raffine"}>
<{elseif $product.model==="moe_b_010"}><{assign var="mo_fit" value="vivante"}>
<{elseif $product.model==="moe_b_008"}><{assign var="mo_fit" value="beetle"}>
<{elseif $product.model==="moe_b_007"}><{assign var="mo_fit" value="digne"}>
<{elseif $product.model==="moe_b_006"}><{assign var="mo_fit" value="amico"}>
<{elseif $product.model==="moe_b_005"}><{assign var="mo_fit" value="bae"}>
<{elseif $product.model==="moe_b_004"}><{assign var="mo_fit" value="coltish"}>
<{elseif $product.model==="moe_b_002"}><{assign var="mo_fit" value="sprout"}>
<{elseif $product.model==="moe_b_003"}><{assign var="mo_fit" value="snazzy"}>
<{elseif $product.model==="moe_b_001"}><{assign var="mo_fit" value="urchin"}>
<{else}><{assign var="mo_fit" value=""}><{/if}>

<{if $mo_fit !== ""}>
<h3 class="mo-fit_title">何が入る？どう使う？</h3>
<dl class="mo-fit">

<{if $mo_fit==="foal"}>
		<dt>入るもの</dt><dd>iPad mini・スマホ・財布・キーケース・モバイルバッテリー</dd>
		<dt>使い方</dt><dd>肩掛け・斜めがけ・ボディバッグ風（ショルダー約130cm）</dd>
		<dt>サイズ</dt><dd>縦17×横25×マチ7cm（A5サイズ）</dd>
		<dt>重さ</dt><dd>約500g</dd>
		<dt>一言</dt><dd>普段使い、近場のお出かけ用</dd>
<{elseif $mo_fit==="raffine"}>
		<dt>入るもの</dt><dd>iPad mini・財布・スマホ・化粧ポーチ・折りたたみ傘</dd>
		<dt>使い方</dt><dd>手提げ・斜めがけの2WAY（ショルダー約130cm）</dd>
		<dt>サイズ</dt><dd>縦29×横36×マチ14cm（B5対応）</dd>
		<dt>重さ</dt><dd>約650g（ショルダー約100g）</dd>
<{elseif $mo_fit==="vivante"}>
		<dt>入るもの</dt><dd>iPad mini・財布・スマホなど普段の荷物</dd>
		<dt>使い方</dt><dd>手提げ・斜めがけの2WAY（ショルダー約130cm）</dd>
		<dt>サイズ</dt><dd>縦21×横27×マチ13cm</dd>
		<dt>重さ</dt><dd>約600g（ショルダー約100g）</dd>
		<dt>一言</dt><dd>普段使い、近場のお出かけ用</dd>
<{elseif $mo_fit==="beetle"}>
		<dt>入るもの</dt><dd>レギュラー：タブレット・雑誌（B5）<br>mini：財布・スマホなど身軽な荷物（A5）</dd>
		<dt>使い方</dt><dd>斜めがけのボディバッグ（ストラップ約100cm）</dd>
		<dt>サイズ</dt><dd>レギュラー：縦21×横34×マチ10cm<br>mini：縦18×横28×マチ9cm</dd>
		<dt>重さ</dt><dd>レギュラー：約590g／mini：約520g</dd>

<{elseif $mo_fit==="digne"}>
		<dt>入るもの</dt><dd>レギュラー：A4書類・iPad<br>mini：必要最小限の荷物を身軽に</dd>
		<dt>使い方</dt><dd>斜めがけ・肩掛け（ショルダー約130cm）</dd>
		<dt>サイズ</dt><dd>レギュラー：縦32×横26×マチ8cm<br>mini：縦29.5×横23×マチ8cm</dd>
		<dt>重さ</dt><dd>レギュラー：約650g／mini：約600g</dd>
		<dt>一言</dt><dd>旅行やレジャー、近場のおお出かけ用</dd>
<{elseif $mo_fit==="amico"}>
		<dt>入るもの</dt><dd>A4書類・15インチノートPC（インナーバッグ）・1～2泊の出張荷物</dd>
		<dt>使い方</dt><dd>手提げ・肩掛けの2WAY（肩当て付きショルダー約130cm）</dd>
		<dt>サイズ</dt><dd>縦33×横42×マチ12cm（A4対応）</dd>
		<dt>重さ</dt><dd>約1,400g（ショルダー・インナーバッグ込み）</dd>
		<dt>一言</dt><dd>お仕事、短期の出張用</dd>
<{elseif $mo_fit==="bae"}>
		<dt>入るもの</dt><dd>A4書類・ノートPC（インナーバッグ）・通勤の荷物</dd>
		<dt>使い方</dt><dd>手持ち・肩掛けのトート。革の底鋲付きで床に置いても自立</dd>
		<dt>サイズ</dt><dd>縦33×横42×マチ12cm（A4対応）</dd>
		<dt>重さ</dt><dd>約1,100g（インナーバッグ込み）</dd>
		<dt>一言</dt><dd>お仕事、普段使い、旅行の万能タイプ</dd>
<{elseif $mo_fit==="coltish"}>
		<dt>入るもの</dt><dd>レギュラー：A4書類・13インチノートPC・財布・ペットボトル<br>mini：B5雑誌・10～11インチのタブレット</dd>
		<dt>使い方</dt><dd>斜めがけのメッセンジャー。自転車通勤にも</dd>
		<dt>サイズ</dt><dd>レギュラー：高さ29×幅36×マチ10cm<br>mini：高さ25×幅30×マチ9cm</dd>
		<dt>重さ</dt><dd>レギュラー：約1,100g／mini：約970g</dd>
		<dt>一言</dt><dd><strong style="color:#eb5a24;">お仕事ならレギュラー、プライベートならmini</strong></dd>
<{elseif $mo_fit==="sprout"}>
		<dt>入るもの</dt><dd>A4書類・15インチノートPC（インナーバッグ）</dd>
		<dt>使い方</dt><dd>手提げ・肩掛けの2WAY（持ち手3段階調節）</dd>
		<dt>サイズ</dt><dd>縦30×横42×マチ12cm（A4対応）</dd>
		<dt>重さ</dt><dd>約1,400g（インナーバッグ込み）</dd>

<{elseif $mo_fit==="snazzy"}>
		<dt>入るもの</dt><dd>レギュラー：A4書類・13インチまでのノートPC<br>mini：B5書類・10～11インチのタブレット</dd>
		<dt>使い方</dt><dd>クラッチ・ブリーフケースとして手持ち（鍵付き錠前）</dd>
		<dt>サイズ</dt><dd>レギュラー：高さ30×幅38×マチ7.5cm<br>mini：高さ25×幅31.6×マチ7.5cm</dd>
		<dt>重さ</dt><dd>レギュラー：約1,200g／mini：約1,150g</dd>
		<dt>一言</dt><dd>お仕事ならレギュラー、プライベートならmini</dd>
<{elseif $mo_fit==="urchin"}>
		<dt>入るもの</dt><dd>A4・B4横の書類・15インチノートPC対応</dd>
		<dt>使い方</dt><dd>手提げ・斜めがけ・リュックの3WAY（肩紐6段階調整）</dd>
		<dt>サイズ</dt><dd>縦37×横40×マチ8.5cm</dd>
		<dt>重さ</dt><dd>約1,400g</dd>
		<dt>一言</dt><dd>お仕事、普段使い、旅行の万能タイプ</dd>
<{/if}>

</dl>
<p class="mo-fit_more">※雨の日は型くずれ・劣化の原因になります<br><a href="#data" title="サイズ・仕様" data-id="data" class="js-size-link" onclick="moeTrack('size_spec_link_click',{pid:moePid(),product_name:moeName(),link_label:'何が入る_詳しく見る'});">サイズ・仕様を詳しく見る &gt;&gt;</a></p>
<{/if}>