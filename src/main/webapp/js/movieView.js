let movieView = {};

$(document).ready(function() {
    movieView.init();
});

movieView.init = function() {
    $.get("/viewedMovie.do")
        .done(function (viewed) {
            console.log("성공");
            console.log(viewed);
            var jsonData = JSON.parse(viewed);
            if(jsonData != null) {
                jsonData.forEach(function (item, index) {
                    $('.viewedimg').eq(index).attr("src", item.img);
                    $('.viewedtitle').eq(index).text(item.title);
                    $('.viewedrunningtime').eq(index).text(item.runningtime);
                });
            }
        }).fail(function() {
        console.log("실패");
    })


}