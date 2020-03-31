document.addEventListener("DOMContentLoaded", function(event) {
    const url = document.getElementById('scheme_url')['value'];
    safari.extension.dispatchMessage('open', { url: url });
});
