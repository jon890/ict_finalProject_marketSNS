// JavaScript source code
$(document).ready(function () {
    $(".mainMenu").mouseover(function () {
        $(".subMenu").css("display", "block");
    });

    $(".mainMenu").mouseout(function () {
        $(".subMenu").css("display", "none");
    });
});
