var shopShowCase = function(){
	var code;
	var $list_wrap;
	var $org_html;
	var old_item_cnt = 0;
	var change_timer = setTimeout(function(){},1);
	var current_window_width;
	var option = {
		'type' : 'slide',
		'code' : '',
		'margin' : 15,
		'width' : 200
	};
	var mobile_section;
	var extend_section;
	var timesale_interval;
	var init = function(data){

		option = $.extend(option,data);
		code = option.code;
		$list_wrap = $('#container_'+code);
		var $section_obj = $list_wrap.closest('div[doz_type=section]');
		mobile_section = $section_obj.attr('doz_mobile_section') == 'Y';
		extend_section = $section_obj.attr('doz_extend') == 'Y';
		current_window_width = $(window).width();
		$org_html = $list_wrap.clone(false);
		$list_wrap.css('visibility','hidden');
		$list_wrap.imagesLoaded()
			.always(function(){
				clearTimeout(change_timer);
				change_timer = setTimeout(function(){
					shopListResize();
				}, 50);
			});
		var windowWidth = $(window).width();
		$(window).off('resize.'+code).on('resize.'+code,function(){

      if ($(window).width() != windowWidth) windowWidth = $(window).width();
      else return;

      clearTimeout(change_timer);
      change_timer = setTimeout(function(){
        shopListResize();
      },200);

		});

		$('body').off('gridChange.'+code).on('gridChange.'+code,function(){
			$(window).trigger('showcase_width.'+code);
		});
		setTimesale();
	};

	var runSlide = function(item_cnt){
		var window_width = $(window).width();
		old_item_cnt = item_cnt;
		if(mobile_section){
			var mobile_cnt = option.line_cnt;
		}else{
			var mobile_cnt = option.mobile_line_cnt;
			if(option.mobile_line_cnt == 0){
				var	mobile_cnt = 1;
			}
		}
		var pc_cnt = item_cnt;
		if(option.show_paging == 'Y'){
			switch(option.paging_style_type){
				case 'st00':
					switch(option.paging_default_style_type){
						case 'st00':
							$list_wrap.toggleClass('paging_type_dot paging_type_dot01', true);
							break;
						case 'st01':
							$list_wrap.toggleClass('paging_type_dot paging_type_dot02', true);
							break;
					}
					break;
				case 'st01':
					$list_wrap.toggleClass('paging_type_big_dot', true);
					break;
				case 'st02':
					$list_wrap.toggleClass('paging_type_line', true);
					break;
				case 'st03':
					switch(option.paging_active_style_type){
						case 'st00':
							$list_wrap.toggleClass('paging_type_count paging_type_count01', true);
							break;
						case 'st01':
							$list_wrap.toggleClass('paging_type_count paging_type_count02', true);
							break;
						case 'st02':
							$list_wrap.toggleClass('paging_type_count paging_type_count03', true);
							break;
					}
					break;
			}
		}

		if(option.show_next_prev == 'Y'){
			$list_wrap.toggleClass('custom_nav nav_type_'+option.nav_style_type);
			switch(option.nav_style_type){
				case 'st00':
					switch(option.nav_type_angle){
						case 'normal':
							break;
						case 'round':
							$list_wrap.toggleClass('nav_round');
							break;
						case 'square':
							$list_wrap.toggleClass('nav_square');
							break;
					}
					break;
				case 'st01':
					switch(option.nav_type_arrow){
						case 'normal':
							break;
						case 'round':
							$list_wrap.toggleClass('nav_round');
							break;
						case 'square':
							$list_wrap.toggleClass('nav_square');
							break;
					}
					break;
				case 'st02':
					switch(option.nav_type_long_arrow){
						case 'normal':
							break;
						case 'round':
							$list_wrap.toggleClass('nav_round');
							break;
						case 'square':
							$list_wrap.toggleClass('nav_square');
							break;
					}
					break;
				case 'st03':
					switch(option.nav_type_caret){
						case 'normal':
							break;
						case 'round':
							$list_wrap.toggleClass('nav_round');
							break;
						case 'square':
							$list_wrap.toggleClass('nav_square');
							break;
					}
					break;
				case 'st04':
					$list_wrap.toggleClass('nav_text');
					break;
			}
		}


		var stagePadding = 0;
		var is_extend_grid = $list_wrap.closest('div[class="inside"]').length === 0;

		if ( option.sub_type == 'b' ) {
			$list_wrap.closest('._item_container').css('overflow', 'hidden');
			if ( is_extend_grid ) { // 그리드 확장시
				stagePadding = 100;
			} else {
				stagePadding = 60;
			}
		}
		$list_wrap.owlCarousel({
			'navText' : ["", ""],
			'slideBy':(option.slide_by == 'Y' && (option.sub_type == 'a' || option.sub_type == 'b' )) ? 1 : pc_cnt,
			'responsive':{
				0:{
					'items': mobile_cnt,
					'stagePadding': option.sub_type == 'b' ? 40 : 0,
					'slideBy':(option.slide_by == 'Y' && (option.sub_type == 'a' || option.sub_type == 'b' )) ? 1 : mobile_cnt,
					'lazyLoadEager': mobile_cnt
				},
				991:{
					'items':pc_cnt,
					'stagePadding': option.sub_type == 'b' ? stagePadding : 0,
					'slideBy':(option.slide_by == 'Y' && (option.sub_type == 'a' || option.sub_type == 'b' )) ? 1 : pc_cnt,
					'lazyLoadEager': pc_cnt
				}
			},
			'lazyLoad': true,
			'nav' : option.show_next_prev =='Y',
			'autoplay' : option.auto_change=='Y',
			'dots' : option.show_paging=='Y',
			'loop' : $list_wrap.find('._shop_item').length > 1 ? option.effect_loop=='Y' : false,
			'smartSpeed' : option.effect_time*1000,
			'autoplayTimeout' : option.effect_wait*1000
		});
	};

	var shopListResize = function(){
		if(option.type == 'slide' && typeof $list_wrap.data('owlCarousel') != 'undefined'){
			$list_wrap.data('owlCarousel',false);
			$list_wrap.empty();
			$list_wrap.off();
			$list_wrap.unbind();
			$.each($org_html.find('._shop_item'),function(e,$_item){
				$list_wrap.append($_item);
			});
			$org_html = $list_wrap.clone(false);
			setTimesale();
		}
		$list_wrap.imagesLoaded()
			.always(function(){
				var window_width =$(window).width();
				if($('body').hasClass('device_type_m'))
					window_width = 370;
				if(window_width <= 768)
					option.margin = 7.5;
				$list_wrap.css({'margin':'0 -'+option.margin+'px'});
				option.width = option.width < 1 ? 200 : option.width;

        function getTrueFloatSize(element) {
          const width = parseFloat(window.getComputedStyle(element).width)
          const height = parseFloat(window.getComputedStyle(element).height)
          return {width, height};
        }
				var inner_width = getTrueFloatSize($list_wrap[0]).width;
				var item_cnt = option.line_cnt;
				if(extend_section && option.extend_cnt != 'Y') // 섹션 확장이면서 갯수 유지가 아니면
					item_cnt = Math.floor(inner_width/option.width);


				var width = Math.floor(inner_width / item_cnt);
				var item_thumbs_width = $('._shop_item .item-thumbs').width();
				var item_detail_max_width = width - 35 - item_thumbs_width;

				if(window_width <= 768 && !mobile_section){
					item_cnt = option.mobile_line_cnt;
					if (option.mobile_line_cnt == 0){
						item_cnt = 2;
					}
				}
				if(option.type == 'slide'){
					runSlide(item_cnt);
          $list_wrap.find('._shop_item').css({'width':'100%','padding':'0 0'+option.margin+'px'});
				}else{
					if(option.sub_type == 'b'){
            if(window_width > 991){
              $list_wrap.find('._shop_item').css({'max-width':width,});
							$list_wrap.find('._shop_item .item-detail').css({'max-width' : item_detail_max_width,});
						}else{
							$list_wrap.find('._shop_item').css({'max-width': '100%',});
							$list_wrap.find('._shop_item .item-detail').css({'max-width' : '100%',});
						}
					}
				}

				$list_wrap.css('visibility','visible');
				shopListHeight();
			});
	};


	var shopListHeight = function(){
		$list_wrap.find('._shop_item').height('auto');
		var be = 0;
		var ar = [];
		$list_wrap.find('._shop_item').each(function(){
			if(be == $(this).position().top){
				ar.push($(this));
			}else{
				var height = 0;
				var interval = 0;
				$.each(ar, function(e, $o){
					var o_height = window.getComputedStyle($o.get(0), null).height;
					o_height = parseFloat(o_height.replace("px", ""));
					if(o_height > height)
						height = Math.ceil(o_height);
				});
				$.each(ar, function(e, $o){
					$o.height(height+interval);
				});
				ar = [];
				ar.push($(this));
				be = $(this).position().top;


			}
		});
		$list_wrap.find('img._org_img').lazyload({
			/* 상품 상세페이지 lazy load 적용, 기본 /img/no-image.png 는 한번만 불러옴 */
			threshold : 100,
			effect : "fadeIn"
		});
	};

	var setPeriodSetting = function(code){
		$.ajax({
			type : 'GET',
			data : {'code' : code},
			url : ('/ajax/shop/get_period_setting.cm'),
			dataType : 'json',
			cache : true,
			success : function(res){
				if(res.msg == 'SUCCESS'){
					if ( $list_wrap.find('._shop_item').length > 1 ) {
						var prod_period_discount_info = res.prod_period_discount_info;
						if(prod_period_discount_info.length > 0){
							prod_period_discount_info.forEach(function(obj){
								$list_wrap.find('.item_pay_detail_' + obj.prod_code).html(obj.html);
								if(option.type == 'slide'){
									$org_html.find('.item_pay_detail_' + obj.prod_code).html(obj.html);
								}
								if(obj.is_timesale == 'true' && obj.is_instant_sale == 'false'){
									if($list_wrap.find('._shop_item').length > 1){//뱃지, 남은 기간 , 가격
										//값 세팅
										$list_wrap.find('._timesale_badge_' + obj.prod_code).show();
										$list_wrap.find('._doz_timesale_' + obj.prod_code).show();
										if(option.type == 'slide'){
											$org_html.find('._timesale_badge_' + obj.prod_code).show();
											$org_html.find('._doz_timesale_' + obj.prod_code).show();
										}
									}
								}else{
									$list_wrap.find('._timesale_badge_' + obj.prod_code).hide();
									$list_wrap.find('._doz_timesale_' + obj.prod_code).hide();
									if(option.type == 'slide'){
										$org_html.find('._timesale_badge_' + obj.prod_code).hide();
										$org_html.find('._doz_timesale_' + obj.prod_code).hide();
									}
								}
								setTimesale();
							});
						}
					}
				}else{
					alert(res.msg);
				}
			},
			error : function(res){
				return false;
			}

		});
	};

	var setTimesale = function(){
		var $doz_timesale_wrap = $list_wrap.find('._doz_timesale_wrap');
		if($doz_timesale_wrap.length > 0){
        $doz_timesale_wrap.each(function(){
				var $that = $(this);
				var $doz_timesale = $that.find('._doz_timesale');
				var date_now = Date.now();
				var remain_ms = ($doz_timesale.attr('data-end-time') * 1000) - date_now;
				if(remain_ms > 0){
					var remain_d = Math.floor(remain_ms / 86400000);
					var remain_h = Math.floor((remain_ms % 86400000) / 3600000);
					var remain_m = Math.floor((remain_ms % 3600000) / 60000);
					var remain_s = Math.floor((remain_ms % 60000) / 1000);

					var remain_hh = remain_h < 10 ? '0' + remain_h : '' + remain_h;
					var remain_mm = remain_m < 10 ? '0' + remain_m : '' + remain_m;
					var remain_ss = remain_s < 10 ? '0' + remain_s : '' + remain_s;
					if(remain_d >= 1){
						$doz_timesale.text(getLocalizeString('설명_타임세일종료까지n일', [remain_d], '타임세일 종료까지 %1일'));
					}else{
						$doz_timesale.text(getLocalizeString('설명_종류까지n1시n2분n3초남음', [remain_hh, remain_mm, remain_ss], '종료까지 %1:%2:%3 남음'));
					}
					date_now = date_now + 1000;
          
          window.addEventListener('resize', function(){
               clearInterval(timesale_interval);
          });
          // 리사이즈일때 인터벌 주기가 중첩되는 문제가 있음. 그래서 리사이즈일 때 기존 interval 설정되어 있던 걸 초기화
          timesale_interval = setInterval(function(){
						var remain_ms = ($doz_timesale.attr('data-end-time') * 1000) - date_now;
						if(remain_ms > 0){
							var remain_d = Math.floor(remain_ms / 86400000);
							var remain_h = Math.floor((remain_ms % 86400000) / 3600000);
							var remain_m = Math.floor((remain_ms % 3600000) / 60000);
							var remain_s = Math.floor((remain_ms % 60000) / 1000);

							var remain_hh = remain_h < 10 ? '0' + remain_h : '' + remain_h;
							var remain_mm = remain_m < 10 ? '0' + remain_m : '' + remain_m;
							var remain_ss = remain_s < 10 ? '0' + remain_s : '' + remain_s;
							if(remain_d >= 1){
								$doz_timesale.text(getLocalizeString('설명_타임세일종료까지n일', [remain_d], '타임세일 종료까지 %1일'));
							}else{
								$doz_timesale.text(getLocalizeString('설명_종류까지n1시n2분n3초남음', [remain_hh, remain_mm, remain_ss], '종료까지 %1:%2:%3 남음'));
							}
							date_now = date_now + 1000;
						}else{
							/* 타임세일 종료 */
							clearInterval(timesale_interval);
							$that.remove();
						}
					}, 1000);
				}else{
					$that.remove();
				}
			});
		}
	};


	return {
		'init' : function(d){
			init(d);
		},
		'shopListHeight' : function(){
			shopListHeight();
		},
		'setPeriodSetting' : function(code){
			setPeriodSetting(code);
		},
	};
};