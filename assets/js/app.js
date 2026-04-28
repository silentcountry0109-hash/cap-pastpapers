// Lazy load page images using IntersectionObserver
(function(){
  const lazyImages = document.querySelectorAll('img[data-src]');
  if (!('IntersectionObserver' in window)) {
    lazyImages.forEach(img => { img.src = img.dataset.src; });
    return;
  }
  const obs = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        const img = entry.target;
        img.src = img.dataset.src;
        img.removeAttribute('data-src');
        obs.unobserve(img);
      }
    });
  }, { rootMargin: '320px 0px' });
  lazyImages.forEach(img => obs.observe(img));

  // Scroll-to-top button
  const btn = document.querySelector('.scroll-top');
  if (btn) {
    window.addEventListener('scroll', () => {
      if (window.scrollY > 400) btn.classList.add('show');
      else btn.classList.remove('show');
    });
    btn.addEventListener('click', () => window.scrollTo({top:0,behavior:'smooth'}));
  }

  // Chapter selector dropdown change
  const chSelect = document.getElementById('chSelect');
  if (chSelect) {
    chSelect.addEventListener('change', () => {
      if (chSelect.value) window.location.href = chSelect.value;
    });
  }
})();
