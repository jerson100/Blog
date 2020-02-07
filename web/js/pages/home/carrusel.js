((window, document, undefined) => {

    const container = document.getElementById("carousel-data_articles");
    const items = container.children;
    const nav_container = document.getElementById("carousel-data_nav");
    const nav_items = Array.from(nav_container.querySelectorAll(".nav-item"));
    const carga = document.getElementById("carga");
    let initial = 0;
    let desX = 1;
    let interval;

    const init = () => {

        clickNav();

        addAutomatic();

    };

    const addAutomatic = () => {
        
        if(carga.classList.contains("active")){
            
            carga.classList.remove("active");
            
        }
        
        setTimeout(()=>{
                
            carga.classList.add("active");
                
        },5);

        interval = setInterval(() => {

            carga.classList.remove("active");

            setTimeout(() => {

                carga.classList.add("active");

            },5);

            moveTo();

        }, 10010);

    };

    const moveTo = () => {

        if (initial === 0) {
            desX = -1;
        } else if (initial === (items.length - 1) * -1) {
            desX = 1;
        }

        initial += desX;

        moveFromTO(initial);

    };

    const moveFromTO = (index) => {
        container.style.transform = `translateX(${(index) * 100}%)`;
        container.style.transition = "all 1s ease";
        for (let item of nav_items) {
            if (item.classList.contains('current')) {
                item.classList.remove('current');
                break;
            }
        }
        nav_items[Math.abs(index)].classList.add('current');
    }

    const clickNav = () => {

        nav_container.addEventListener('click', e => {
            if (e.target.tagName === 'SPAN' && !e.target.classList.contains("current")) {
                moveFromTO(-nav_items.indexOf(e.target));
                initial = -nav_items.indexOf(e.target);
                desX = -1;
                clearInterval(interval);
                addAutomatic();
            }
        });

    };

    init();
    

})(window, document);
