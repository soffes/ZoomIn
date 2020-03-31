document.addEventListener("DOMContentLoaded", function(event) {
    console.log("[Zoom Now] Hello");

    const url = document.getElementById('scheme_url')['value'];
    console.log("[Zoom Now] URL:", url);

    safari.extension.dispatchMessage('open', { url: url });
});
