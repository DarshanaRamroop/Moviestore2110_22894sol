(function ($) {
    "use strict";
    $(document).ready(function () {
        //init dataTables
        $('#gvs').dataTable(
            {
                "lengthMenu": [2, 3, 5, 10, 20],
                lengthChange: true,
                info: true,
                pageLength: 2
            });

        $('#gvs2').dataTable(
            {

                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });

        $(document).on('click', '[data-toggle="lightbox"]', function (event) {
            event.preventDefault();
            $(this).ekkoLightbox();
        });
    });
}(jQuery));