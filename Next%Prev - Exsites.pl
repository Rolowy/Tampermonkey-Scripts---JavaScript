// ==UserScript==
// @name         Next%Prev - Exsites.pl
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       Rolowy
// @match        https://exsites.pl/*
// @icon         https://www.google.com/s2/favicons?domain=exsites.pl
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    var right = document.querySelector('[class="nnext"]');
    var left = document.querySelector('[class="nprev"]');

    function switcher(e) {
        //console.log(e.code);
        if(e.code == 'ArrowRight')
        {
            right.click();
        }
        else if(e.code == 'ArrowLeft')
        {
            left.click();
        }
    }

    if(right != null && left != null)
    {
        document.addEventListener('keydown', switcher);
    }
    else
    {
        console.log('Page not supported.');
    }

})();
