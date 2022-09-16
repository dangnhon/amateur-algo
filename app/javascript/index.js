let hiddenEl = document.getElementsByClassName("card")

for (let i = 0; i < hiddenEl.length; i++) {
    hiddenEl[i].addEventListener('click', e => {
        e.currentTarget.childNodes[3].classList.toggle('is-hidden')
    })
}