function changeImage() {
	var url = document.getElementById("CreateCheckCode");
	url.src = "genImage.do?" + new Date().getMilliseconds();
	changeImage1();
}
function changeImage1() {
	var url = document.getElementById("CreateCheckCode1");
	url.src = "genImage.do?" + new Date().getMilliseconds();
	changeImage();
}