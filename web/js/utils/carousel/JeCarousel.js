"use strict";
class MediaQuerie {
    constructor(querie, value) {
        this.querie = querie;
        this.value = value;
    }
}
class Carrusel {
    constructor(object) {
        this.medias = [new MediaQuerie("900", 4),
            new MediaQuerie("800", 3),
            new MediaQuerie("600", 2)];
        this.widthPantalla = 0;
        this.columns = 0;
        this.positionItems = 0;
        this.tamagnoElement = 0;
        this.countItemsNav = 0;
        this.slider = object.slider;
        this.sliderWrapper = this.slider.firstElementChild;
        this.items = Array.from(this.sliderWrapper.children);
        this.medias = object.medias || this.medias;
        this.auto = object.auto || false;
        if (this.auto) {
            let increment = 1;
            setInterval(() => {
                if (this.positionItems === 0) {
                    increment = 1;
                }
                else if (this.positionItems === this.countItemsNav - 1) {
                    increment = -1;
                }
                this.positionItems += increment;
                this.moveTo(this.positionItems);
            }, object.time || 4000);
        }
        else {
            this.btnLeft = this.createBoton("btn btn-left", "<");
            this.btnRight = this.createBoton("btn btn-right", ">");
            this.slider.appendChild(this.btnLeft);
            this.slider.appendChild(this.btnRight);
            this.containerNav = this.createNav();
            this.slider.appendChild(this.containerNav);
        }
        this.render();
    }
    createBoton(selectorClass, content) {
        let btn = document.createElement("div");
        btn.setAttribute("class", selectorClass);
        btn.innerHTML = content;
        return btn;
    }
    createNav() {
        let nav = document.createElement("div");
        nav.setAttribute("class", "container-nav");
        nav.innerHTML = `
                <ul class="nav_inner">
                    
                </ul>
            `;
        return nav;
    }
    update() {
        this.widthPantalla = this.sliderWrapper.getBoundingClientRect().width;
        if (!this.auto) {
            this.btnLeft.style.display = "none";
        }
        this.positionItems = 0;
        this.columns = 1; //default: una imagen 
        for (let media in this.medias) {
            if (window.matchMedia(`(min-width: ${this.medias[media].querie}px)`).matches) {
                this.columns = this.medias[media].value;
                break;
            }
        }
        //this.tamagnoElement = this.widthPantalla / this.columns - 0.8 * (this.columns);
        //12.800 es el padding right de cada item :-)
        this.tamagnoElement = (this.widthPantalla - 12.800) / this.columns;
        this.countItemsNav = Math.ceil(this.items.length / this.columns);
        this.slider.style.transform = `translateX(${0}px)`;
        this.items.forEach((e) => e.style.width = `${this.tamagnoElement}px`);
        //actualizamos todos los númbers del container
        //de nav
        if (!this.auto) {
            this.updateNav();
        }
        this.moveTo(0);
        this.opaticity(0, this.columns);
    }
    updateNav() {
        let fragment = document.createDocumentFragment();
        let element;
        for (let i = 0; i < this.countItemsNav; i++) {
            element = document.createElement("li");
            element.innerHTML = i + 1;
            fragment.appendChild(element);
        }
        let navInner = this.containerNav.querySelector(".nav_inner");
        navInner.innerHTML = "";
        navInner.appendChild(fragment);
    }
    render() {
        this.update();
        window.addEventListener("resize", (e) => {
            this.update();
        });
        if (!this.auto) {
            this.btnLeft.addEventListener('click', (e) => {
                if (this.positionItems > 0) {
                    this.positionItems--;
                    this.moveTo(this.positionItems);
                }
            });
            this.btnRight.addEventListener('click', (e) => {
                if (this.positionItems + 1 < this.countItemsNav) {
                    this.positionItems++;
                    this.moveTo(this.positionItems);
                }
                else {
                    this.btnRight.style.display = "none";
                }
            });
        }
    }
    moveTo(to) {
        this.opaticity(this.positionItems * this.columns, this.positionItems * this.columns + this.columns);
        if (!this.auto) {
            this.btnLeft.style.display = "flex";
            this.btnRight.style.display = "flex";
            if (to === 0) {
                this.btnLeft.style.display = "none";
            }
            else if (to === this.countItemsNav - 1) {
                this.btnRight.style.display = "none";
            }
        }
        /*let px = this.tamagnoElement * this.columns * to;*/
        let px = this.widthPantalla * to;
        this.sliderWrapper.style.transform = `translateX(-${px}px)`;
    }
    opaticity(initial, final) {
        for (let i = 0; i < this.items.length; i++) {
            if (i >= initial && i < final) {
                this.items[i].style.opacity = "1";
            }
            else {
                this.items[i].style.opacity = ".2";
            }
        }
    }
}
