// Spoiler tag logic
// All relavant html is within a tag with a "spoiler" class.  
// The data to be shown/hidden is within a tag with "spoils" class

let spoilers = document.querySelectorAll(".spoiler")

for (let i = 0; i < spoilers.length; i++) {
    let spoiler = spoilers[i]
    let clickable = spoiler.querySelector("p")
    let spoils = spoiler.querySelector(".spoils")
    let arrow = spoiler.querySelector(".arrow")
    clickable.addEventListener("click", () => {
        let d = spoils.style.display
        if (d == "initial") {
            spoils.style.display = "none"
            arrow.classList.remove("selected")
        } else {
            spoils.style.display = "initial"
            arrow.classList.add("selected")
        }
    })
}

// Image slideshow logic
// Allows images to iterated through
let slideshows = document.querySelectorAll(".slideshow")

for (let i = 0; i < slideshows.length; i++) {
    let slideshow = slideshows[i]

    // Make the first image appear
    slideshow.querySelector("img").style.display = "initial"

    let next = slideshow.querySelector(".next")
    next.addEventListener("click", (ev) => {
        change_slide(slideshow, 1)
    })

    let prev = slideshow.querySelector(".prev")
    prev.addEventListener("click", (ev) => {
        change_slide(slideshow, -1)
    })
}

function change_slide(slideshow, step) {
    let imgs = slideshow.querySelectorAll("img");
    for (let i = 0; i < imgs.length; i++) {
        let img = imgs[i];

        if (img.style.display == "initial") {
            img.style.display = "none"
            console.log(i)
            console.log((i + 1) % imgs.length)
            console.log(imgs.length)
            imgs[(i + step + 7) % imgs.length].style.display = "initial"
            break
        }
    }
}
