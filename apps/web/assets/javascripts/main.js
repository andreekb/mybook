(function () {
    var ajaxBeforeHandler = function (event) {
        var idButton = event.target.id;
        form = document.getElementById(idButton);
        button = form.getElementsByClassName("button is-small is-danger")[0];
        if (button.getAttribute('class') == 'button is-small is-danger') {
            button.setAttribute('class', 'button is-small is-danger is-loading');
        }
    };

    var ajaxCompleteHandler = function (event) {
        var status = event.detail.status;
        if (status >= 200 && status < 300) {
            if (button.getAttribute('class') == 'button is-small is-danger is-loading') {
                button.setAttribute('class', 'button is-small is-danger');
            }
            var id = event.target.id + '-row'
            var myobj = document.getElementById(id);
            myobj.remove();
        } else {

        }
    };
    document.addEventListener('DOMContentLoaded', () => {
        (document.querySelectorAll('.notification .delete') || []).forEach(($delete) => {
            const $notification = $delete.parentNode;

            $delete.addEventListener('click', () => {
                $notification.parentNode.removeChild($notification);
            });
        });
    });

    document.addEventListener("ajax:before", ajaxBeforeHandler);
    document.addEventListener("ajax:complete", ajaxCompleteHandler);
})();