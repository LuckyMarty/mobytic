document.addEventListener("DOMContentLoaded", function () {

    // 		Ajouter l'attribut aria-label à tous les a
    let nav_links = document.querySelectorAll("a");

    nav_links.forEach(function (a) {
        if (a.textContent != "") {
            a.setAttribute('aria-label', a.textContent);
        } else {
            a.setAttribute('aria-label', "Ceci est un lien");
        }
    });

    // 		Ajouter l'attribut alt à tous les img n'ayant pas de alt
    let mb_img_alt = document.querySelectorAll("img");
    mb_img_alt.forEach(function (img) {
        if (img.textContent == '') {
            img.setAttribute('alt', 'Plein d\'Vie');
            img.setAttribute('width', img.width);
            img.setAttribute('height', img.height);
        }
    });

});