var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl)
})

var yearElement = document.getElementById("copyright-year");
if (yearElement != null) {
    var copyrightYear = yearElement.innerText;
    var currentYear = new Date().getFullYear();
    if (copyrightYear != currentYear) {
        yearElement.innerText = copyrightYear + " - " + currentYear;
    }
}