/*
    Hints: 
    1. Attach click event handlers to all four of the 
       buttons (#default, #ocean, #desert, and #high-contrast).
    2. Modify the className property of the body tag 
       based on the button that was clicked.
*/

const changeToDefault = () => {
   document.querySelector('body').className = '';
}

const changeToDesert = () => {
   document.querySelector('body').className = 'desert';
}

const changeToOcean = () => {
   document.querySelector('body').className = 'ocean';
}

const changeToHighContrast = () => {
   document.querySelector('body').className = 'high-contrast';
}

document.querySelector('#default').addEventListener('click', changeToDefault);
document.querySelector('#desert').addEventListener('click', changeToDesert);
document.querySelector('#ocean').addEventListener('click', changeToOcean);
document.querySelector('#high-contrast').addEventListener('click', changeToHighContrast);