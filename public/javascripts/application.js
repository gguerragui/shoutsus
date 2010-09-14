function afterShoutCreated(html, id) {
    $(".shouts").prepend(html);
    $("#shout_body").val('');
    $("#shout_" + id).show("highlight");
}

function updateShoutsFrom(html) {
    $(".shouts").html(html);
}

function updateShouts() {
    $("#update_shouts").callRemote();
}

function removeShout(id) {
    $("#shout_" + id).remove();
}

$(function() {
    setInterval(updateShouts, "60000");
})

