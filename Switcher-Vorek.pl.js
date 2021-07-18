// ==UserScript==
// @name         Switcher - Vorek.pl
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       Rolowy
// @match        https://vorek.pl/*
// @icon         https://www.google.com/s2/favicons?domain=vorek.pl
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    document.addEventListener('keydown', clickBro);

    function clickBro(e) {
        console.log(e.code);
        if(e.code == 'ArrowRight')
        {
            document.querySelector('img[title="Następna"]').click();
        }
        else if(e.code == 'ArrowLeft')
        {
            document.querySelector('img[title="Poprzednia"]').click();

        }
    }
})();
