var review = document.getElementById('review');
var remaining = document.getElementById('remaining');
review.addEventListener('input', function(e) {
    review.value = (e.target.value.slice(0,999));
    remaining.innerHTML = (999-e.target.value.length);
})

