
let index = {};

$(document).ready(function (){
    index.init();
})

index.init = function (){
    $.get("/index.do")
        .done(function (data){
            console.log("성공");
            //console.log(data);
            var jsonData = JSON.parse(data);
            // console.log(jsonData)
            jsonData.forEach(function (item,index){
                $('.movietitle').eq(index).text(item.title);
                $('.movietitle').eq(index).attr("href", "/movieView.do?num=" + item.num);
                $('.moviecategory').eq(index).text(item.category);
                $('.movierunningtime').eq(index).text(item.runningtime);
                $('.movieimg').eq(index).attr('src',item.img);
                $('.youtube').eq(index).attr('href',item.youtube);
                $('.mvisitcount').eq(index).text(item.visitcount);
            });
        }).fail(function (){
            console.log("실패");
    })
    $.get("/index2.do")
        .done(function (data2){
            console.log("성공");
            // console.log(data2);
            var jsonData = JSON.parse(data2);
            jsonData.forEach(function (item,index){
                $('.recentTi').eq(index).text(item.title);
                $('.recentTi').eq(index).attr("href", "/movieView.do?num=" + item.num);
                console.log(item.num);
                $('.recentCa').eq(index).text(item.category);
                $('.recentRun').eq(index).text(item.runningtime);
                $('.recentSum').eq(index).text(item.summary);
                $('.recentImg').eq(index).attr('src',item.img);
                $('.recentyou').eq(index).attr('href',item.youtube);
                $('.rvisitcount').eq(index).text(item.visitcount);
            });
        }).fail(function (){
        console.log("실패");
    })

    $.get("/index3.do")
        .done(function (data3){
            console.log("성공");
            // console.log(data3);
            var jsonData = JSON.parse(data3);
            jsonData.forEach(function (item,index){
                $('.randomTi').eq(index).text(item.title);
                $('.randomTi').eq(index).attr("href", "/movieView.do?num=" + item.num);
                $('.randomCa').eq(index).text(item.category);
                let timestamp = (item.releasedate);
                let date = new Date(timestamp).toDateString();
                $('.randomdate').eq(index).text(date);
                $('.randomRun').eq(index).text(item.runningtime);
                $('.randomSum').eq(index).text(item.summary);
                $('.randomImg').eq(index).attr('src',item.img2);
                $('.randomyou').eq(index).attr('href',item.youtube);
            });
        }).fail(function (){
        console.log("실패");
    })
}

