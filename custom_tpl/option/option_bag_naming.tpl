<!--//////////
名入れオプション（アコーディオンUI）
F59 / page_num=58
@ date: 2026-10-30
- <label>内・smartyタグは既存のまま
- JSはこのフリーページ内で完結（jQuery非依存。jQueryはdefer読み込みのため）
//////////-->
<div class="mo-naire" data-mo-naire>

<!--
名入れにこだわらない
名入れなし・moeのロゴ
-->
<div class="mo-naire_group" data-group="none">
<button type="button" class="mo-naire_head" id="mo-naire-head-1" aria-expanded="false" aria-controls="mo-naire-panel-1">
<span class="mo-naire_icon" aria-hidden="true"></span>
<span class="mo-naire_text"><span class="mo-naire_title">名入れにこだわらない</span><span class="mo-naire_sub">名入れなし・moeのロゴ</span><span class="mo-naire_selected"></span></span>
</button>
<div class="mo-naire_panel" id="mo-naire-panel-1" role="region" aria-labelledby="mo-naire-head-1">
<div class="mo-naire_inner">
<{if $product.model !== "moe_b_001" && $product.model !== "moe_b_001_p" && $product.model !== "moe_b_002" && $product.model !== "moe_b_002_p"}><div class="mo-naire_links"><a href="//moe-bag.jp/service/info_service">名入れ（ロゴ）無し対応可。詳しくはこちら &gt;&gt;</a></div><{/if }>
<div class="mo-naire_options mo-naire_options--single">
<label for="option2-4" class="option2-4">
<input type="radio" name="option2" value="<{$option_data_id[4]}>" id="option2-4">
<{$option_data_name[4]}>
<div class="item_option_sample">
  <div class="item_option_font"></div>
</div>
</label>
</div>
</div>
</div>
</div>

<!--
書体を選んで名入れ
4種類の書体から選択
-->
<div class="mo-naire_group" data-group="font">
<button type="button" class="mo-naire_head" id="mo-naire-head-2" aria-expanded="false" aria-controls="mo-naire-panel-2">
<span class="mo-naire_icon" aria-hidden="true"></span>
<span class="mo-naire_text"><span class="mo-naire_title">書体を選んで名入れ</span><span class="mo-naire_sub">4種類の書体から選択</span><span class="mo-naire_selected"></span></span>
</button>
<div class="mo-naire_panel" id="mo-naire-panel-2" role="region" aria-labelledby="mo-naire-head-2">
<div class="mo-naire_inner">
<div class="mo-naire_links"><a <{if ($bid_name === "バッグ" && $sid_name === "革プリントなし") || $product.model==="moe_s_001"}>class="js-font-modal"<{else}>href="//moe-bag.jp/blog/info/add_handwriting_font" <{/if}>>書体のアルファベット一覧はこちら &gt;&gt;</a></div>
<div class="mo-naire_options mo-naire_options--grid">
<label for="option2-2" class="option2-2">
<input type="radio" name="option2" value="<{$option_data_id[2]}>" id="option2-2">
<{$option_data_name[2]}><span style="font-weight:700; color:#eb5a24">【人気！】</span>
<div class="item_option_sample">
  <div class="item_option_font"></div>
</div>
</label>
<label for="option2-3" class="option2-3">
<input type="radio" name="option2" value="<{$option_data_id[3]}>" id="option2-3">
<{$option_data_name[3]}>
<div class="item_option_sample">
  <div class="item_option_font"></div>
</div>
</label>
<label for="option2-0" class="option2-0">
<input type="radio" name="option2" value="<{$option_data_id[0]}>" id="option2-0">
<{$option_data_name[0]}>
<div class="item_option_sample">
  <div class="item_option_font"></div>
</div>
</label>
<label for="option2-1" class="option2-1">
<input type="radio" name="option2" value="<{$option_data_id[1]}>" id="option2-1">
<{$option_data_name[1]}>
<div class="item_option_sample">
  <div class="item_option_font"></div>
</div>
</label>
</div>
</div>
</div>
</div>

<!--
オリジナルデザインで名入れ
ロゴ・イラストなど（＋3,000円）
-->
<div class="mo-naire_group" data-group="original">
<button type="button" class="mo-naire_head" id="mo-naire-head-3" aria-expanded="false" aria-controls="mo-naire-panel-3">
<span class="mo-naire_icon" aria-hidden="true"></span>
<span class="mo-naire_text"><span class="mo-naire_title">オリジナルデザインで名入れ</span><span class="mo-naire_sub">ロゴ・イラストなど（＋3,000円）</span><span class="mo-naire_selected"></span></span>
</button>
<div class="mo-naire_panel" id="mo-naire-panel-3" role="region" aria-labelledby="mo-naire-head-3">
<div class="mo-naire_inner">
<div class="mo-naire_links">
<{if $product.model ==="moe_b_003"}>
  <a href="//moe-bag.jp/data/snazzy_name_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{elseif $product.model ==="moe_b_004"}>
  <a href="//moe-bag.jp/data/coltish_name_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{elseif $product.model ==="moe_b_005" || $product.model ==="moe_b_006"}>
  <a href="//moe-bag.jp/data/amico_bae_name_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{elseif $product.model ==="moe_b_007"}>
  <a href="//moe-bag.jp/data/digne_name_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{elseif $product.model ==="moe_b_008"}>
  <a href="//moe-bag.jp/data/beetle_name_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{elseif $product.model ==="moe_b_009"}>
  <a href="//moe-bag.jp/data/raffine_name_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{elseif $product.model ==="moe_b_010"}>
  <a href="//moe-bag.jp/data/vivante_name_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{elseif $product.model ==="moe_b_011"}>
  <a href="//moe-bag.jp/data/foal_name_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{elseif $product.model ==="moe_s_002"}>
  <a href="//moe-bag.jp/data/sentire_name_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{else}><{* moe_s_001,moe_b_001,moe_b_001_p,moe_b_002,moe_b_002_p *}>
  <a href="//moe-bag.jp/data/banner_format_cs6.zip">オリジナルデザインの雛形はこちら >></a>
<{/if}>
<a href="<{$prod_inq_url}>">オーダー前のデザインチェック（無料）がおすすめ。お問い合わせはこちら  >></a>
</div>
<div class="mo-naire_options mo-naire_options--single">
<label for="option2-5" class="option2-5">
<input type="radio" name="option2" value="<{$option_data_id[5]}>" id="option2-5">
<{$option_data_name[5]}>
<div class="item_option_sample">
  <div class="item_option_font"></div>
</div>
</label>
</div>
<p class="info_alert">オリジナルデザインのデータはAdobeのイラストレーターになります。<br>（データの送信先はオーダーの後にメールにてご案内）</p>
</div>
</div>
</div>

</div>
<!--//////////名入れオプション（アコーディオンUI）ここまで//////////-->
<script>
/* ===== 名入れアコーディオン：常に1つだけ開く（FAQと同じ挙動） ===== */
(function(){
  var root = document.querySelector('[data-mo-naire]');
  if (!root || root.getAttribute('data-ready')) return;
  root.setAttribute('data-ready', '1');

  var DURATION = 300;
  var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  var groups = [].slice.call(root.querySelectorAll('.mo-naire_group'));

  function head(g){ return g.querySelector('.mo-naire_head'); }
  function panel(g){ return g.querySelector('.mo-naire_panel'); }
  function isOpen(g){ return head(g).getAttribute('aria-expanded') === 'true'; }

  function open(g, instant){
    var p = panel(g);
    head(g).setAttribute('aria-expanded', 'true');
    g.classList.add('is-open');
    if (reduce || instant) { p.style.maxHeight = 'none'; return; }
    p.style.maxHeight = p.scrollHeight + 'px';
    var done = function(e){
      if (e.propertyName !== 'max-height') return;
      p.removeEventListener('transitionend', done);
      if (isOpen(g)) p.style.maxHeight = 'none'; /* 回転等で高さが変わっても切れないように */
    };
    p.addEventListener('transitionend', done);
  }
  function close(g){
    var p = panel(g);
    head(g).setAttribute('aria-expanded', 'false');
    g.classList.remove('is-open');
    p.style.maxHeight = p.scrollHeight + 'px'; /* 現在の高さを確定 */
    p.offsetHeight;                            /* 再計算 */
    p.style.maxHeight = '0px';                 /* 0へアニメーション */
  }
  /* 他を閉じたとき、タップした見出しの表示位置を固定 */
  function keepPosition(el, before){
    var start = performance.now();
    (function step(now){
      var diff = el.getBoundingClientRect().top - before;
      if (diff) window.scrollBy(0, diff);
      if (!reduce && now - start < DURATION + 80) requestAnimationFrame(step);
    })(start);
  }

  /* 見出しに選択中の項目名を表示（閉じていても選択内容がわかるように） */
  function labelText(input){
    var lb = input.closest('label');
    if (!lb) return '';
    var t = '';
    [].forEach.call(lb.childNodes, function(n){ if (n.nodeType === 3) t += n.nodeValue; });
    return t.replace(/【人気！】/, '').replace(/\s+/g, ' ').trim();
  }
  function updateSelected(){
    groups.forEach(function(g){
      var c = g.querySelector('input[name="option2"]:checked');
      var s = g.querySelector('.mo-naire_selected');
      g.classList.toggle('is-selected', !!c);
      if (s) s.textContent = c ? '選択中：' + labelText(c) : '';
    });
  }

  groups.forEach(function(g){
    head(g).addEventListener('click', function(){
      var h = head(g);
      if (isOpen(g)) { close(g); return; }
      var before = h.getBoundingClientRect().top;
      var closedOther = false;
      groups.forEach(function(o){ if (o !== g && isOpen(o)) { close(o); closedOther = true; } });
      open(g);
      if (closedOther) keepPosition(h, before);

      /* 計測（moeTrackが定義されているページのみ） */
      if (typeof moeTrack === 'function') {
        moeTrack('naming_group_open', {pid: moePid(), product_name: moeName(), naming_group: g.getAttribute('data-group')});
      }
    });
  });

  root.addEventListener('change', function(e){
    if (e.target && e.target.name === 'option2') updateSelected();
  });

  /* 初期表示：ブラウザバック等で選択済みなら、そのグループを開く */
  function restore(){
    updateSelected();
    var checked = root.querySelector('input[name="option2"]:checked');
    var g = checked && checked.closest('.mo-naire_group');
    if (g && !isOpen(g)) open(g, true);
  }
  restore();
  window.addEventListener('pageshow', restore); /* フォーム状態の復元は読み込み後に起きるため */
})();
</script>