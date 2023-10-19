/**
 * Only when the DOM is ready
 */
document.addEventListener('DOMContentLoaded', () => {
    window.innerWidth > 768 ? mobytic_banner_margin() : mobytic_banner_margin_reset();
});

/**
 * Reload functions when screen resized
 */
window.addEventListener('resize', () => {
    window.innerWidth > 768 ? mobytic_banner_margin() : mobytic_banner_margin_reset();
});




/**
 * FUNCTIONS
 */
// Get the left margin for the banner
const mobytic_banner_margin = () => {
    if (document.querySelector('#mobytic-homepage-banner')) {
        let addingPadding = document.querySelector('.wrapper').getBoundingClientRect().left + window.scrollX + 15;
        document.querySelector('#mobytic-homepage-banner > .client').style.padding = '0 50px 0 ' + addingPadding + 'px';
    }
}

// Reset the banner left margin
const mobytic_banner_margin_reset = () => {
    if (document.querySelector('#mobytic-homepage-banner')) {
        document.querySelector('#mobytic-homepage-banner > .client').style.padding = '0 50px';
    }
}