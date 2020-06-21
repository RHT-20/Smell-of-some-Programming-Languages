// // DOM manipulation

// console.log(document.getElementById("title"));
// console.log(document instanceof HTMLDocument);


// function sayHello() {
// 	var name = document.getElementById("name").value;

// 	// var message = "Hello " + name + "!";
// 	// document.getElementById("content").textContent =  message;

// 	var message = "<h2>Hello " + name + "!</h2>";
// 	document.getElementById("content").innerHTML =  message;

// 	if (name === "student") {
// 		var title = document.querySelector("#title").textContent;
// 		title += " for student";
// 		document.querySelector("#title").textContent = title;
// 	}
// }


// // event handling
// function sayHello(event) {
// 	this.textContent = "Said it!"
// 	console.log(this);

// 	var name = document.getElementById("name").value;

// 	// var message = "Hello " + name + "!";
// 	// document.getElementById("content").textContent =  message;

// 	var message = "<h2>Hello " + name + "!</h2>";
// 	document.getElementById("content").innerHTML =  message;

// 	if (name === "student") {
// 		var title = document.querySelector("#title").textContent;
// 		title += " for student";
// 		document.querySelector("#title").textContent = title;
// 	}
// }

// unobstrusive event binding
// document.querySelector("button").addEventListener("click", sayHello);

// document.querySelector("button").onclick = sayHello;


document.addEventListener("DOMContentLoaded", 
	function (event) {
		function sayHello(event) {
			this.textContent = "Said it!"
			// console.log(this);

			var name = document.getElementById("name").value;

			// var message = "Hello " + name + "!";
			// document.getElementById("content").textContent =  message;

			var message = "<h2>Hello " + name + "!</h2>";
			document.getElementById("content").innerHTML =  message;

			if (name === "student") {
				var title = document.querySelector("#title").textContent;
				title += " for student";
				document.querySelector("#title").textContent = title;
			}
		}

		document.querySelector("button").addEventListener("click", sayHello);

		// playing with event
		document.querySelector("body").addEventListener("mousemove", 
			function (event) {
				if (event.shiftKey === true) {
					console.log(event.clientX + " " + event.clientY);
				}
			}
		);
	}
);
