// Wait for the page to load
window.addEventListener("load", function(event) {
    // Get the URL from Zoom’s page
    let url;
    const linkElement = document.getElementById('scheme_url');
    if (linkElement) {
        url = linkElement['value'];
    } else {
        const anchorElement = document.querySelector('a[launch]');
        if (anchorElement) {
            url = anchorElement.href;
        }
    }
    
    if (!url) {
        return;
    }
    
    // Tell the native extension about the URL
    safari.extension.dispatchMessage('open', { url: url });
});
