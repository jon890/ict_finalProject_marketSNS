function showHtml(data, commPageNum){
	let html = "<table width='500' align='center'>";
	html += "<tr>";
	html += "<td class='desc'>댓글 작성자</td>";
	html += "<td class='desc'>댓글 내용</td>";
	html += "<td class='desc'>댓글 작성시간</td>";
	html += "</tr>";
	
	$.each(data, function(index, comment){
		html += "<tr>";
		html += "<td>" + comment.id + "</td>";
		html += "<td>" + comment.commentContent + "</td>";
		html += "<td>" + comment.commentDate + "</td>";
		html += "</tr>";
	});
	
	html += "</table>";
	commPageNum = parseInt(commPageNum);
	
	if("${snsArticle.commentCount}" > commPageNum * 10){
		nextPageNum = commPageNum + 1;
		html += "<br> <input type='button' onclick='getComment(nextPageNum, event)' value='다음 댓글 보기'>"
	}
	
	$("#showComment").html(html);
	$("#commentContent").val("");
}


$("#likebtn").on("click", function(event){
	event.preventDefault;
	$("#snsArticleForm").attr("action", "./like.msg");			
});