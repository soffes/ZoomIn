// Wait for the page to load
document.addEventListener("DOMContentLoaded", function(event) {
    // Get the URL from Zoom’s page
    const url = document.getElementById('scheme_url')['value'];

    // Tell the native extension about the URL
    safari.extension.dispatchMessage('open', { url: url });
});
