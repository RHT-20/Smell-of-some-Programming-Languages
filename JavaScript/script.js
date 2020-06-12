// // variable declaration
// var x = "Hello World!";
// console.log(x);


// console.log(this);
// console.log(window);


// // function
// function compare(x, y) {
// 	return	(x < y);
// }
// console.log(compare(5, 10));
// console.log(compare(10, 5));
// console.log(compare(5, "5"));
// console.log(compare());

// comp = function (x, y) {
// 	return	(x < y);
// }
// console.log(comp(5, 10));
// console.log(comp(10, 5));
// console.log(comp(5, "5"));
// console.log(comp());

// function f1() {
// 	console.log("Inside A");

// 	function f2() {
// 		console.log("Inside B");
// 	}

// 	f2();
// }
// f1();


// // parseInt
// console.log(parseInt(4/3));
// var text = '4.5aaa';
// console.log(parseInt(text));


// // equality
// var x = 4, y = 5;
// if (x == y) {
// 	console.log(true);
// }
// else {
// 	console.log(false);
// }

// y = '4';
// if (x == y) {
// 	console.log(true);	// type coercion
// }
// else {
// 	console.log(false);
// }

// if (x === y) {	// strict equality
// 	console.log(true);
// }
// else {
// 	console.log(false);
// }

// console.log(Boolean(""));


// // object
// var student = new Object();
// var student = {
// 	name: {
// 		firstName: "Rakibul",
// 		lastName: "Hasan"
// 	}
// };
// student.age = 18;
// student['class'] = 10;
// console.log(student);


// // function as an object
// function fun(x) {
// 	console.log("Hello");
// }
// fun.version = 1.0;
// console.log(fun.toString());
// console.log(fun.version);

// function makeMultiplier(x) {
// 	var multiplier = function (y) {
// 		return	(x * y);
// 	}
// 	return	multiplier;
// }

// var multiplyBy2 = makeMultiplier(2);
// console.log(multiplyBy2(10));

// // passing function as an argument
// function multiply(x, operation) {
// 	return	operation(x);
// }
// console.log(multiply(100, multiplyBy2));


// // pass by value
// var a = 5;
// var b = a;
// console.log(a, b);
// b = 7;
// console.log(a, b);

// // pass by reference
// var a = {x : 5};
// var b = a;
// console.log(a, b);
// b.x = 7;
// console.log(a, b);


// // function constructor
// function Circle(redius) {
// 	this.redius = redius;

// 	this.getArea = function () {
// 		return	(Math.PI * Math.pow(redius, 2));
// 	};
// }
// var circle = new Circle(10);
// console.log(circle);
// console.log(circle.getArea());

// // each object of type Circle will share the same getArea function
// function Circle(redius) {
// 	this.redius = redius;
// }
// Circle.prototype.getArea = function() {
// 	return	(Math.PI * Math.pow(this.redius, 2));
// };
// var circle = new Circle(10);
// console.log(circle);
// console.log(circle.getArea());

// // object literal
// var circle = {
// 	redius: 10,
// 	getArea: function () {
// 		var self = this;
		
// 		var changeRedius = function (newRedius) {
// 			self.redius = newRedius;
// 		}
// 		changeRedius(20);

// 		return	(Math.PI * Math.pow(this.redius, 2));
// 	}
// };
// console.log(circle.getArea());


// // array
// var ary = new Array();
// ary[0] = "Rakib";
// ary[1] = 20;
// ary[2] = function () {
// 	console.log("Hello");
// }
// ary[10] = {class: 10};

// console.log(ary);

// for (var i = 0; i<ary.length; i++) {
// 	console.log(ary[i]);
// }

// for (var it in ary) {
// 	console.log(ary[it]);
// }


// // immediately invoked function expression
// (function () {
// 	console.log("Hello World!");
// })();
