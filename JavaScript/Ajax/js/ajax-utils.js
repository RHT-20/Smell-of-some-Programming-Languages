(function (global) {

	var ajaxUtils = {};

	function getRequestObject() {
		if (global.XMLHttpRequest) {
			return	(new XMLHttpRequest());
		}
		else if (global.ActiveXObject) {
			return	(new ActiveXObject("Microsoft.XMLHTTP"));
		}
		else {
			global.alert("Ajax not supported!");
			return	null;
		}
	}

	ajaxUtils.sendGetRequest = function (requestUrl, responseHandler, isJsonResponse) {
		var request = getRequestObject();

		request.onreadystatechange = function () {
			handleResponse(request, responseHandler, isJsonResponse);
		};

		request.open("GET", requestUrl, true);
		request.send(null);
	}

	function handleResponse(request, responseHandler, isJsonResponse) {
		if (request.readyState === 4 && request.status === 200) {
			if (isJsonResponse) {
				responseHandler(JSON.parse(request.responseText), isJsonResponse);
			}
			else {
				responseHandler(request.responseText, isJsonResponse);
			}
		}
	}

	global.$ajaxUtils = ajaxUtils;

})(window);
