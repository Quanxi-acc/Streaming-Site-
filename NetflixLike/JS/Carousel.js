document.addEventListener('DOMContentLoaded', function() {
    // Initialisation de tous les carrousels
    document.querySelectorAll('.carousel-container').forEach(carousel => {
        const container = carousel.querySelector('.carousel');
        const items = Array.from(carousel.querySelectorAll('.carousel-item'));
        const prevBtn = carousel.querySelector('.prev');
        const nextBtn = carousel.querySelector('.next');
        
        if (items.length === 0) return;
        
        let currentIndex = 0;
        const itemWidth = items[0].offsetWidth + parseInt(window.getComputedStyle(container).gap);
        
        function updateCarousel() {
            const offset = -currentIndex * itemWidth;
            container.style.transform = `translateX(${offset}px)`;
            container.style.transition = 'transform 0.5s ease';
        }
        
        if (prevBtn) {
            prevBtn.addEventListener('click', () => {
                currentIndex = (currentIndex - 1 + items.length) % items.length;
                updateCarousel();
            });
        }
        
        if (nextBtn) {
            nextBtn.addEventListener('click', () => {
                currentIndex = (currentIndex + 1) % items.length;
                updateCarousel();
            });
        }
        
        // Initialisation
        updateCarousel();
        
        // Réinitialiser la position quand on redimensionne
        window.addEventListener('resize', () => {
            currentIndex = 0;
            updateCarousel();
        });
    });
});