var ConcertoIframe = {
  _initialized: false,

  previewIframe: function() {
    // get url for loading preview and url for iframe
    var url = $('input#iframe_config_url').data('url');
    var iframe_url = $('input#iframe_config_url').val();
    if (iframe_url) {
      // load iframe preview
      $('#preview_div').load(url, { data: {
        iframe_url: iframe_url
      }, type: 'Iframe' });
    } else {
      // clear preview when iframe url is not specified
      $('#preview_div').text("");
    }
  },

  resizePreview: function () {
    var new_height = $(window).height() * .50;
    $('#preview_div').height(new_height);
  },

  initHandlers: function () {
    if (ConcertoIframe._initialized) {
      // console.debug('already initialized iframe handlers');
    } else {
      // console.debug('initializing Iframe Handlers');
      $('input#iframe_config_url').on('blur', ConcertoIframe.previewIframe);
      $('input#iframe_config_url').on('change', ConcertoIframe.previewIframe);
      ConcertoIframe.resizePreview();
      ConcertoIframe._initialized = true;
    }
  }
};

$(document).ready(ConcertoIframe.initHandlers);
$(document).on('turbolinks:load', ConcertoIframe.initHandlers);
