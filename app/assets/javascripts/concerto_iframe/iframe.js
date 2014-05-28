function previewIframe() {
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
}

function resizePreview() {
  var new_height = $(window).height() * .50;
  $('#preview_div').height(new_height);
}

function initializeIframeHandlers() {
  $('input#iframe_config_url').on('blur', previewIframe);
  $('input#iframe_config_url').on('change', previewIframe);
  resizePreview();
}

$(document).ready(initializeIframeHandlers);
$(document).on('page:change', initializeIframeHandlers);