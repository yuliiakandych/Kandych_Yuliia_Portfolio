

(() => {
 
  const works = document.querySelectorAll('.works');
  const lightbox = document.querySelector('.lightbox-wrapper');
  const closeBtn = document.querySelector('.close-btn')
  

  //scroll to pop up window function
  function scrollToBio() {
    TweenLite.to(window, 0.5, {
      scrollTo: { y: `.bio-wrapper`, offsetY: 20 }
    });
  };

  function showLightbox(e){

    




    e.preventDefault();
    lightbox.classList.remove('hidden');
    let url = `/users/${this.getAttribute('href')}`
    console.log(url)

    



    fetch(url)
    .then(res => {return res.json()})
    .then(data => {
      console.log(data);
      parseData(data)
    })
  }

  function parseData(portfolio){
    const heroImg = lightbox.querySelector('.hero-img'),
    category = lightbox.querySelector('.category'),
    tools = lightbox.querySelector('.tools'),
    title = lightbox.querySelector('.title'),
    mainGoal = lightbox.querySelector('.main-goal'),
    authors = lightbox.querySelector('.authors')

    heroImg.src = `images/desktopPopUp/${portfolio.image}`;
    category.innerHTML = portfolio.category;
    tools.innerHTML = portfolio.tools;
    title.innerHTML = portfolio.name,
    mainGoal.innerHTML = portfolio.description,
    authors.innerHTML = portfolio.authors

  }

  function closeLightbox(){
    lightbox.classList.add('hidden');
  }


  works.forEach(work => work.addEventListener('click', showLightbox))
  closeBtn.addEventListener('click', closeLightbox)

 
})();
