function setVisibility($div, visibility)  {
  const $button = $("button", $div);
  const $text = $div.children().not("button").first();
  if (visibility) {
    $div.data('hidden', true);
    $button.text('Click to hide');
    $text.show();
  } else {
    $div.data('hidden', false);
    $button.text('Click to show');
    $text.hide();
  }
}

function toggleVisibility($div) {
  setVisibility($div, !$div.data('hidden'));
}

$(document).ready(function() {
  $('.spoiler').each((_, div) => {
    $div = $(div);

    // set initial state
    setVisibility($div, false);

    // set onClick handler
    $("button", $div).first().click((event) => toggleVisibility($(event.target).parent()));
  });
});

/*
spoilers have signature:
<container class="spoiler">
  <content></content>
  <button></button>
</container>
*/

