/** ajax 비동기 통신을 위한 공통 함수 */
function ajax(obj) {
	var method = obj.method ? obj.method.toUpperCase() : "GET";
	var url = obj.url;
	var param = obj.param;
	var callback = obj.callback;
	
	var request = createXMLHttpRequest();
	
	request.onreadystatechange = function() {
		if(request.readyState == 4){
			if(request.status == 200){
				callback(request);
			}else if(request.status == 400){
				console.log("400에러 잘못된 요청");
				//alert("잘못된 요청입니다.");
			}else if(request.status == 404){
				console.log("404에러 잘못된 요청");
				//alert("요청페이지를 찾을 수 없습니다.");
			}else{
				console.log("서버장애");
				//alert("서버장애로 서비스를 할 수 없습니다.");
			}
		}
	};
	
	if(method == "GET"){
		if(param) url += ("?" + param);
		request.open(method, url, true);
		request.send();
	}else{
		request.open(method, url, true);
		request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		request.send(param);
	}
}

function createXMLHttpRequest() {
	var xhr = null;
	try{
		xhr = new XMLHttpRequest();
	}catch(e){
		xhr = new ActiveXObject("Msxml2.XMLHTTP");
	}
	return xhr;
}