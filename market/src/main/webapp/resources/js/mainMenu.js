$(document).ready(function () {

    $(".mainMenu").mouseover(function () {
        $(".subMenu").css("display", "block");
        //$(".ul").css("display", "block");
    });

    $(".mainMenu").mouseout(function () {
        $(".subMenu").css("display", "none");
        //$(".ul").css("display", "none");
    });
});