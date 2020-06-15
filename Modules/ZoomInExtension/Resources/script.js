// Wait for the page to load
window.addEventListener("load", function(event) {
    // Get the URL from Zoom’s page
    let url;
    let oldZoomPageElement = document.getElementById('scheme_url');
    if (oldZoomPageElement) {
        url = oldZoomPageElement['value'];
    } else {
        const selectors = document.querySelectorAll('[launch]');
        if (selectors.length > 0) {
            url = selectors[0].href;
        }
    }
    
    if (!url) {
        return;
    }
    
    // Tell the native extension about the URL
    safari.extension.dispatchMessage('open', { url: url });
});
