document.addEventListener("DOMContentLoaded", function (event) {
	document.querySelector("button").addEventListener("click", function (event) {
		// var requestUrl = "/data/name.txt";
		var requestUrl = "/data/name.json";

		$ajaxUtils.sendGetRequest(requestUrl, function (response, isJsonResponse) {
			if (isJsonResponse) {
				var name = response.firstName + " " + response.lastName;
			}
			else {
				var name = response;
			}

			var message = "<h2>Hello, " + name + "!</h2>";
			document.querySelector("#content").innerHTML = message;

		}, true);
	});
});
