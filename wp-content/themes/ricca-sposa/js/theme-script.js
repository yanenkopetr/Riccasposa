$(document).ready(function () {
    
  $('.section-card.section-left, .section-card.section-right, .section-instagram').viewportChecker({
    classToAdd: 'animated',
  });
  
  $('.contacts-col').viewportChecker({
    classToAdd: 'animated',
  });
  
  $('.info-col').viewportChecker({
    classToAdd: 'animated',
  });
  
  $('.catalog-item').viewportChecker({
    classToAdd: 'animated',
  });
  
// dress list on the homepage    
  $('.dress-list').slick({
    dots: false,
    infinite: true,
    speed: 300,
    slidesToShow: 5,
    slidesToScroll: 1,
    prevArrow: '<button class="btn-arrow btn-prev" type="button"><i class="icon-left-arrow-chevron"></i></button>',
    nextArrow: '<button class="btn-arrow btn-next" type="button"><i class="icon-right-arrow-chevron"></i></button>',
    responsive: [
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });
  
  // single dress gallery
  $('.slider-for').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    fade: true,
    asNavFor: '.slider-nav',
    prevArrow: '<button class="btn-arrow btn-prev" type="button"><i class="icon-left-arrow-chevron"></i></button>',
    nextArrow: '<button class="btn-arrow btn-next" type="button"><i class="icon-right-arrow-chevron"></i></button>',
  });
  
  $('.slider-for').slickLightbox({
      itemSelector        : 'a',
      navigateByKeyboard  : true,
      imageMaxHeight: 1
    });
  
  $('.slider-nav').slick({
    slidesToShow: 6,
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    dots: false,
    arrows: false,
    focusOnSelect: true,
    responsive: [
      {
        breakpoint: 991,
        settings: {
          slidesToShow: 5,
          slidesToScroll: 1,
        }
      },
      {
        breakpoint: 767,
        settings: {
          slidesToShow: 4,
          slidesToScroll: 1,
        }
      }
    ]
  });
  
  // About us galleries
  $('.slider-1').slick({
    dots: false,
    infinite: true,
    autoplay: true,
    autoplaySpeed: 5000,
    speed: 800,
    slidesToShow: 2,
    slidesToScroll: 2,
    prevArrow: '<button type="button" class="btn-prev"><i class="icon-left-arrow-chevron"></i></button>',
    nextArrow: '<button type="button" class="btn-next"><i class="icon-right-arrow-chevron"></i></button>',
    responsive: [

    ]
  });

  $('.slider-2').slick({
    dots: false,
    infinite: true,
    autoplay: true,
    autoplaySpeed: 5000,
    speed: 800,
    slidesToShow: 1,
    slidesToScroll: 1,
    prevArrow: '<button type="button" class="btn-prev"><i class="icon-left-arrow-chevron"></i></button>',
    nextArrow: '<button type="button" class="btn-next"><i class="icon-right-arrow-chevron"></i></button>',
    responsive: [
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });
  
	$('.icheckbox_flat-aero').on('click', function(){
		$(this).toggleClass('checked')
	})
	  
	 $('input[name=your-phone]').inputmask({
		"mask": "(999) 999 99 99"
	});

	$('.popup_link').on('click', function(e){
	  e.preventDefault();
	  $('.table-size_wrap').show();
	})

	$('.table-size_wrap .overlay').on('click', function(e){
	  e.preventDefault();
	  $('.table-size_wrap').hide();
	})
	
	
	// CURRENCY SETTINGS START
    
    $('.toggle-rate').on('click', function(e){
        e.preventDefault();
        
        let from = $('.irs-from').text();
        let to = $('.irs-to').text();
        
        let rates = $('.switch_rates_wrap').find('.current_rate');
        for (let i = 0; i < 2; i++) {
            let changed = $(rates[i]).parents('.switch_rates_wrap').find('.toggle-rate');
            $(rates[i]).text($(rates[i]).text() == 'USD' ? 'UAH' : 'USD');
            
            changed.text(changed.text() == 'UAH' ? 'USD' : 'UAH');
            
            changed.toggleClass('usd');
            $(rates[i]).toggleClass('usd');
            $(rates[i]).attr('data-rate', $(rates[i]).attr('data-rate') == 'usd' ? 'uah' : 'usd');
        }
        
        let sliderUah = $('.mdf_filter_section_1');
        let sliderUsd = $('.mdf_filter_section_0');
        
        let priceUsd = $('.usd-rate');
        let priceUah = $('.uah-rate');

        if ($(rates[0]).text().toLowerCase() === 'uah') {
            priceUsd.css('display', 'none');
            priceUah.css('display', 'inline');
            sliderUah.show();
            sliderUsd.hide();
        } else {
            priceUsd.css('display', 'inline');
            priceUah.css('display', 'none');
            sliderUah.hide();
            sliderUsd.show();
        }
        
        localStorage.setItem('curr', $(rates[0]).text().toLowerCase());
    });
    
    if (!localStorage.getItem('curr')) localStorage.setItem('curr', $('.current_rate')[0].dataset.rate);
    
    let rates = $('.switch_rates_wrap').find('.current_rate');
    let curr = localStorage.getItem('curr');
    for (let i = 0; i < 2; i++) {
        let changed = $(rates[i]).parents('.switch_rates_wrap').find('.toggle-rate');
        $(rates[i]).text(curr.toUpperCase());
        
        if (curr === 'uah') {
            changed.text(changed.text() == 'UAH' ? 'USD' : 'UAH');
            changed.toggleClass('usd');
            $(rates[i]).toggleClass('usd');
            $(rates[i]).attr('data-rate', $(rates[i]).attr('data-rate') == 'usd' ? 'uah' : 'usd');
        }
    }
    
    let priceUsd = $('.usd-rate');
    let priceUah = $('.uah-rate');
    
    if (curr === 'uah') {
        priceUsd.css('display', 'none');
        priceUah.css('display', 'inline');
        $('.mdf_filter_section_1').show();
        $('.mdf_filter_section_0').hide();
    } else {
        priceUsd.css('display', 'inline');
        priceUah.css('display', 'none');
        $('.mdf_filter_section_0').show();
        $('.mdf_filter_section_1').hide();
    }
    
    // CURRENCY SETTINGS END


  $('.mdf_reset_button').val('Очистить');
  $('.mdf_shortcode_container').addClass('filter-col');
  $('.wpcf7-list-item').addClass('checkbox').addClass('checkbox-item');
  $('.wpcf7-list-item-label').addClass('checkbox-text');
  $('a.prev').text('').prepend('<i class="icon-left-arrow-chevron"></i>');
  $('a.next').text('').prepend('<i class="icon-right-arrow-chevron"></i>');
  $('.page-numbers').addClass('pagination-item');
  
  if (!localStorage.getItem('Products')) localStorage.setItem('Products', JSON.stringify({ length: 0 }));
  $('.fitting span').text(JSON.parse(localStorage.getItem('Products')).length);

  function addToCart() {
    let inFit = JSON.parse(localStorage.getItem('Products'));
    
    $('.btn-add-basket').on('click', function(e) {
      e.preventDefault();
      
      
      const currentProduct = $(this);
      
      const item = {
          id: currentProduct.parents('.product-col').attr('id') || currentProduct.parents('.product').attr('id'),
          img: currentProduct.parents('.product-col').find('img').attr('src') || currentProduct.parents('.product').find('.product-img-item img').attr('src'),
          name: currentProduct.parents('.product-col').find('.name').text() || currentProduct.parents('.product').find('.product-name').text(),
          url: currentProduct.parents('.product-col').find('a').attr('href') || currentProduct.parents('.product').find('.permalink').attr('href'),
      };
      
      $(currentProduct).addClass('added-basket');
      
      if (inFit[item.id]) {
        return false;
      }
  
      inFit = { [item.id]: item, ...inFit, length: ++inFit.length }
      
      localStorage.setItem('Products', JSON.stringify(inFit));
  
      $('.fitting span').text(inFit.length);
    });
    
   /* const item = $('.product-col').map(function () {
      return $(this).attr("id")
   });*/
  }

  
    /*function checkCart() {
      let inFit = JSON.parse(localStorage.getItem('Products'));
      
      const item = {
          id: $('.product-col').attr('id')
      };
      
      let dressesId = $('.product-col').map(function () {
          return $(this).attr("id")
      });
      
     let existId = dressesId.some(inFit); 
      
      console.log(inFit);
      console.log(existId);
      
      if (inFit[item.id]) {
        $('.product-col').addClass('added-basket');
        return false;
      }
    }
  
  checkCart();*/
  

  
  function addFitToForm() {
    const dressList = $('.basket-list');

    const products = JSON.parse(localStorage.getItem('Products'));
    const dressArr = Object.keys(products)
      .filter(key => key !== 'length')
      .map(key => products[key])
      .map(obj => createItem(obj.name, obj.img, obj.id, obj.url));
    
    dressList.prepend(dressArr);
  }
    
    
  function createItem(name, imgUrl, id, itemUrl) {
    let productItem = document.createElement('div');
    let productImgWrap = document.createElement('a');
    let productImg = document.createElement('img');
    let productName = document.createElement('a');
    let btn = document.createElement('button');
    let icon = document.createElement('i');
      
    productItem.classList.add('product-item');
    productName.classList.add('product-name');
    productImgWrap.classList.add('product-thumb');
    btn.classList.add('btn-del');
    icon.classList.add('icon-cancle');
      
      
    productItem.setAttribute('id',id);
    btn.setAttribute('type','button');
    productImg.setAttribute('src', imgUrl);
    productImgWrap.setAttribute('href', itemUrl);
    productName.setAttribute('href', itemUrl);
    productName.innerHTML = name;
      
    btn.prepend(icon);
    productImgWrap.prepend(productImg);
    productItem.prepend(productImgWrap,productName,btn);
      
    return productItem;
  }
    
  function removeItemFromCart() {
    $('.btn-del').on('click', function(e) {
      e.preventDefault();

      let products = JSON.parse(localStorage.getItem('Products'));

      const itemId = $(this).parents('.product-item').attr('id');
      const currentItem = $(this).parents('.product-item');
      
      delete products[itemId];
      localStorage.setItem('Products', JSON.stringify({ ...products, length: --products.length }));

      currentItem.remove();
      $('.fitting span').text(products.length);
    });
  }
  
  function sendProductsWithForm() {
    $('.fit-submit input').on('mousedown', e => {
      e.preventDefault();
      
      const products = JSON.parse(localStorage.getItem('Products'));
      let submitString = '';
  
      for (let key in products) {
        if (key !== 'length') {
          submitString +=
            `Наименование: ${products[key].name}\nСсылка: ${products[key].url}\n\n`;
        }
      }

      $('input[name="your-products"]')[0].value = submitString;
      // remove items from from after form submiting
      localStorage.removeItem('Products');
    });
  }
  
    function backToTop() {
        $('.back-to-top').on('click', function(e) {
            e.preventDefault();
            $('html, body').animate({
            scrollTop: 0
            }, 800);
        });
        
        if ($(window).scrollTop() > 500 ) {
            $('.back-to-top').css({'opacity': 1});
        } else {
            $('.back-to-top').css({'opacity': 0});
        }
    }

    function heroVideo(){
        let videoHeight = $('.video-bg video').height();
        $('.section-main').css('height', videoHeight);
    }
    
    $(window).scroll(function () {
        backToTop();
    });
    
    $(window).resize(function () {
         heroVideo();
    });

  heroVideo();
  backToTop();
    
  addToCart();
  addFitToForm();
  removeItemFromCart();
  sendProductsWithForm();
    
});
