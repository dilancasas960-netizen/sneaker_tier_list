
document.querySelectorAll('.stars label').forEach(label => {
    label.addEventListener('click', function() {
        let allLabels = document.querySelectorAll('.stars label');
        allLabels.forEach(l => l.querySelector('.star').style.color = '#555');
        this.querySelector('.star').style.color = '#ffd700';
        let prev = this.previousElementSibling;
        while(prev) {
            if(prev.tagName === 'LABEL') prev.querySelector('.star').style.color = '#ffd700';
            prev = prev.previousElementSibling;
        }
    });
});
